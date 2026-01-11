.class public final Lʽʼ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽʼ/ʼˎ;


# instance fields
.field public final ⁱˊ:Lˏـ/ᵎﹶ;

.field public final ﹳٴ:Lʽʼ/ˆʾ;


# direct methods
.method public constructor <init>(Lʽʼ/ˆʾ;Lˏـ/ᵎﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽʼ/ﾞᴵ;->ﹳٴ:Lʽʼ/ˆʾ;

    iput-object p2, p0, Lʽʼ/ﾞᴵ;->ⁱˊ:Lˏـ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lʽʼ/ﾞᴵ;->ⁱˊ:Lˏـ/ᵎﹶ;

    invoke-virtual {v0, p1}, Lˏـ/ᵎﹶ;->ﹳٴ(Ljava/lang/Exception;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final ﹳٴ(Lˎﾞ/ⁱˊ;)Z
    .locals 7

    .prologue
    iget v0, p1, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lʽʼ/ﾞᴵ;->ﹳٴ:Lʽʼ/ˆʾ;

    invoke-virtual {v0, p1}, Lʽʼ/ˆʾ;->ﹳٴ(Lˎﾞ/ⁱˊ;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v6, p1, Lˎﾞ/ⁱˊ;->ʽ:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-wide v2, p1, Lˎﾞ/ⁱˊ;->ˑﹳ:J

    iget-wide v4, p1, Lˎﾞ/ⁱˊ;->ﾞᴵ:J

    new-instance v1, Lʽʼ/ﹳٴ;

    invoke-direct/range {v1 .. v6}, Lʽʼ/ﹳٴ;-><init>(JJLjava/lang/String;)V

    iget-object p1, p0, Lʽʼ/ﾞᴵ;->ⁱˊ:Lˏـ/ᵎﹶ;

    iget-object p1, p1, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    invoke-virtual {p1, v1}, Lˏـ/ˉʿ;->ˆʾ(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null token"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
