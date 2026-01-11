.class public final Lﹳˊ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lٴﾞ/ˉʿ;

.field public final ˈ:Ljava/lang/String;

.field public final ⁱˊ:Lˑʼ/ᵎˊ;

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(Lˑʼ/ᵎˊ;Lٴﾞ/ˉʿ;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳˊ/ﹳٴ;->ⁱˊ:Lˑʼ/ᵎˊ;

    iput-object p2, p0, Lﹳˊ/ﹳٴ;->ʽ:Lٴﾞ/ˉʿ;

    iput-object p3, p0, Lﹳˊ/ﹳٴ;->ˈ:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lﹳˊ/ﹳٴ;->ﹳٴ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lﹳˊ/ﹳٴ;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Lﹳˊ/ﹳٴ;

    iget-object v0, p0, Lﹳˊ/ﹳٴ;->ⁱˊ:Lˑʼ/ᵎˊ;

    iget-object v1, p1, Lﹳˊ/ﹳٴ;->ⁱˊ:Lˑʼ/ᵎˊ;

    invoke-static {v0, v1}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lﹳˊ/ﹳٴ;->ʽ:Lٴﾞ/ˉʿ;

    iget-object v1, p1, Lﹳˊ/ﹳٴ;->ʽ:Lٴﾞ/ˉʿ;

    invoke-static {v0, v1}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lﹳˊ/ﹳٴ;->ˈ:Ljava/lang/String;

    iget-object p1, p1, Lﹳˊ/ﹳٴ;->ˈ:Ljava/lang/String;

    invoke-static {v0, p1}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lﹳˊ/ﹳٴ;->ﹳٴ:I

    return v0
.end method
