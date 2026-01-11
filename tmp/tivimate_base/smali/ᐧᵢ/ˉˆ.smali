.class public final Lᐧᵢ/ˉˆ;
.super Lᐧᵢ/ˑﹳ;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧᵢ/ˉˆ;->ﹳٴ:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lᐧᵢ/ﾞᴵ;
    .locals 3

    .prologue
    invoke-static {p1}, Lᐧᵢ/ʿᵢ;->ᵔᵢ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lᐧᵢ/ˈ;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1}, Lᐧᵢ/ʿᵢ;->ᵎﹶ(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    const-class v0, Lᐧᵢ/ﹳـ;

    invoke-static {p2, v0}, Lᐧᵢ/ʿᵢ;->ٴﹶ([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lᐧᵢ/ˉˆ;->ﹳٴ:Ljava/util/concurrent/Executor;

    :goto_0
    new-instance p2, Lˑʼ/ᵎˊ;

    const/16 v0, 0xb

    invoke-direct {p2, p1, v0, v2}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Call return type must be parameterized as Call<Foo> or Call<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
