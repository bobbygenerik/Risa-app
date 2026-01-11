.class public final Lﹶٴ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיʼ/ﹳٴ;


# instance fields
.field public final ⁱˊ:Lﹶٴ/ˉˆ;

.field public final ﹳٴ:Lיʼ/ﹳٴ;


# direct methods
.method public constructor <init>(Lיʼ/ﹳٴ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶٴ/ˆʾ;->ﹳٴ:Lיʼ/ﹳٴ;

    new-instance v0, Lﹶٴ/ˉˆ;

    invoke-interface {p1}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object p1

    invoke-direct {v0, p1}, Lﹶٴ/ˉˆ;-><init>(Lˉﾞ/ˈ;)V

    iput-object v0, p0, Lﹶٴ/ˆʾ;->ⁱˊ:Lﹶٴ/ˉˆ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lﹶٴ/ˆʾ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lﹶٴ/ˆʾ;

    iget-object v2, p0, Lﹶٴ/ˆʾ;->ﹳٴ:Lיʼ/ﹳٴ;

    iget-object p1, p1, Lﹶٴ/ˆʾ;->ﹳٴ:Lיʼ/ﹳٴ;

    invoke-static {v2, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˆʾ;->ﹳٴ:Lיʼ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p1}, Lcom/parse/ʽˑ;->ˏי()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lﹶٴ/ˆʾ;->ﹳٴ:Lיʼ/ﹳٴ;

    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ـˆ(Lיʼ/ﹳٴ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    iget-object v0, p0, Lﹶٴ/ˆʾ;->ⁱˊ:Lﹶٴ/ˉˆ;

    return-object v0
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 1

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lﹶٴ/ˆʾ;->ﹳٴ:Lיʼ/ﹳٴ;

    invoke-virtual {p1, v0, p2}, Lʻʻ/ʽ;->ᵔᵢ(Lיʼ/ﹳٴ;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lʻʻ/ʽ;->ˑﹳ()V

    return-void
.end method
