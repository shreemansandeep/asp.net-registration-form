FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env

WORKDIR /app

# Copy csproj and restore as distinct layers

COPY *.csproj ./

# ARG HTTP_PROXY="http://username:password@proxy.example.com:8080"

USER administrator
RUN dotnet restore

# Copy everything else and build

COPY . ./

USER administrator
RUN dotnet publish -c Release -o out

# Build runtime image

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1

WORKDIR /app

COPY --from=build-env /app/out .

ENTRYPOINT ["dotnet", "myapp.dll"]
