using PackageCompiler

try
    PackageCompiler.restore_default_sysimage()
catch error
    @warn error
end