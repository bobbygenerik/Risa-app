.class public final Lᐧᵢ/ˆʾ;
.super Lᐧᵢ/ˑﹳ;
.source "SourceFile"


# virtual methods
.method public final ﹳٴ(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lᐧᵢ/ﾞᴵ;
    .locals 2

    .prologue
    invoke-static {p1}, Lᐧᵢ/ʿᵢ;->ᵔᵢ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/util/concurrent/CompletableFuture;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lᐧᵢ/ʿᵢ;->ᵎﹶ(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lᐧᵢ/ʿᵢ;->ᵔᵢ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lᐧᵢ/ʼˈ;

    if-eq v0, v1, :cond_1

    new-instance p2, Lˉˆ/ʿ;

    const/16 v0, 0x1d

    invoke-direct {p2, v0, p1}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    return-object p2

    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p2, p1}, Lᐧᵢ/ʿᵢ;->ᵎﹶ(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    new-instance p2, Lˊⁱ/ˑﹳ;

    const/16 v0, 0x10

    invoke-direct {p2, v0, p1}, Lˊⁱ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    return-object p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
