.class public abstract Lᴵי/ˏי;
.super Lˈי/ﹳٴ;
.source "SourceFile"

# interfaces
.implements Lˈי/ﾞᴵ;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lˈי/ˑﹳ;->ʾˋ:Lˈי/ˑﹳ;

    invoke-direct {p0, v0}, Lˈי/ﹳٴ;-><init>(Lˈי/ᵎﹶ;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lᴵי/ʾᵎ;->ٴﹶ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʽᵔ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lˊʽ/ⁱˊ;->ʼˎ(Lᴵי/ˏי;Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;
    .locals 2

    .prologue
    instance-of v0, p1, Lˈי/ⁱˊ;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lˈי/ⁱˊ;

    iget-object v0, p0, Lˈי/ﹳٴ;->ʾˋ:Lˈי/ᵎﹶ;

    if-eq v0, p1, :cond_0

    return-object v1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    sget-object v0, Lˈי/ˑﹳ;->ʾˋ:Lˈי/ˑﹳ;

    if-ne v0, p1, :cond_2

    return-object p0

    :cond_2
    return-object v1
.end method

.method public י(I)Lᴵי/ˏי;
    .locals 1

    invoke-static {p1}, Lˊʽ/ⁱˊ;->ﹳٴ(I)V

    new-instance v0, Lˊʽ/ᵎﹶ;

    invoke-direct {v0, p0, p1}, Lˊʽ/ᵎﹶ;-><init>(Lᴵי/ˏי;I)V

    return-object v0
.end method

.method public final ـˆ(Lˈי/ᵎﹶ;)Lˈי/ᵔᵢ;
    .locals 1

    .prologue
    instance-of v0, p1, Lˈי/ⁱˊ;

    if-eqz v0, :cond_1

    check-cast p1, Lˈי/ⁱˊ;

    iget-object v0, p0, Lˈי/ﹳٴ;->ʾˋ:Lˈי/ᵎﹶ;

    if-eq v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    sget-object v0, Lˈי/ˑﹳ;->ʾˋ:Lˈי/ˑﹳ;

    if-ne v0, p1, :cond_2

    sget-object p1, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    return-object p1

    :cond_2
    return-object p0
.end method

.method public abstract ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
.end method

.method public ᐧﹶ(Lˈי/ᵔᵢ;)Z
    .locals 0

    instance-of p1, p0, Lᴵי/ٴﹳ;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
