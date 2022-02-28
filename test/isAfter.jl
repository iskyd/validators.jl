@safetestset "isAfter" begin
    using validators

    # date
    @test validators.isAfter("2022-02-28", "2022-02-27") === true
    @test validators.isAfter("2022-02-28", "2022-02-28") === false
    @test validators.isAfter("2022-02-28", "2022-03-01") === false

    # datetime
    @test validators.isAfter("2022-02-28T12:00:00", "2022-02-27T12:00:00") === true
    @test validators.isAfter("2022-02-28T12:00:00", "2022-02-28T09:00:00") === true
    @test validators.isAfter("2022-02-28T12:00:00", "2022-02-28T12:00:00") === false
    @test validators.isAfter("2022-02-28T12:00:00", "2022-03-01T12:00:00") === false
end