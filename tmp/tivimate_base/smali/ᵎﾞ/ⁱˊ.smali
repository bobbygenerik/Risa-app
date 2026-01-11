.class public abstract Lᵎﾞ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎﾞ/ˈ;


# instance fields
.field public final ﹳٴ:Lʾʽ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lʾʽ/ᵎﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎﾞ/ⁱˊ;->ﹳٴ:Lʾʽ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lˑᵎ/ﹳᐧ;)Z
    .locals 0

    .prologue
    invoke-interface {p0, p1}, Lᵎﾞ/ˈ;->ﹳٴ(Lˑᵎ/ﹳᐧ;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lᵎﾞ/ⁱˊ;->ﹳٴ:Lʾʽ/ᵎﹶ;

    invoke-virtual {p1}, Lʾʽ/ᵎﹶ;->ﹳٴ()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lᵎﾞ/ⁱˊ;->ˑﹳ(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract ˈ()I
.end method

.method public abstract ˑﹳ(Ljava/lang/Object;)Z
.end method

.method public final ⁱˊ(Lᴵˋ/ˑﹳ;)Lᵎˈ/ʽ;
    .locals 4

    new-instance p1, Lᴵʼ/ʽ;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Lᴵʼ/ʽ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    new-instance v0, Lᵎˈ/ʽ;

    const/4 v1, -0x2

    const/4 v2, 0x1

    sget-object v3, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-direct {v0, p1, v3, v1, v2}, Lᵎˈ/ʽ;-><init>(Lᴵⁱ/ʼᐧ;Lˈי/ᵔᵢ;II)V

    return-object v0
.end method
