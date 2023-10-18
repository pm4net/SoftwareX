#!/usr/bin/env bash
set -e

# Run unit tests
dotnet test ./OCEL/OCEL.Tests/ -c Release -l "trx;LogFileName=../../../../results/OCEL/OCEL.trx"
dotnet test ./OCEL/OCEL.CSharp.Tests/ -c Release -l "trx;LogFileName=../../../../results/OCEL/OCEL-CSharp.trx"
dotnet test ./pm4net/pm4net.Tests/ -c Release -l "trx;LogFileName=../../../../results/pm4net/pm4net.trx"
dotnet test ./serilog-sinks-ocel/Serilog.Sinks.OCEL.Tests/ -c Release -l "trx;LogFileName=../../../../results/serilog-sinks-ocel/serilog-sinks-ocel.trx"
dotnet test ./serilog-enrichers-callerinfo/Serilog.Enrichers.CallerInfo.Tests/ -c Release -l "trx;LogFileName=../../../../results/serilog-enrichers-callerinfo/serilog-enrichers-callerinfo.trx"

# Run benchmarks
dotnet run --project ./Benchmarks/Benchmarks/Benchmarks.csproj --framework net7.0 --filter *

# Try and build OCEL-CLI and StructuredLogExplorer as they do not have test suites
dotnet build ./OCEL-CLI/CLI/ -c Release
dotnet build ./StructuredLogExplorer/Client/ -c Release