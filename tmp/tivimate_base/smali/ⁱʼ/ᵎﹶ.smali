.class public final Lⁱʼ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˑﹳ;


# instance fields
.field public final ʽ:Ljava/net/URL;

.field public final ˈ:Ljava/lang/String;

.field public ˑﹳ:Ljava/lang/String;

.field public volatile ᵎﹶ:[B

.field public ᵔᵢ:I

.field public final ⁱˊ:Lⁱʼ/ᵔᵢ;

.field public ﾞᴵ:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    sget-object v0, Lⁱʼ/ᵔᵢ;->ﹳٴ:Lⁱʼ/ٴﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lⁱʼ/ᵎﹶ;->ʽ:Ljava/net/URL;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lⁱʼ/ᵎﹶ;->ˈ:Ljava/lang/String;

    const-string p1, "Argument must not be null"

    invoke-static {v0, p1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lⁱʼ/ᵎﹶ;->ⁱˊ:Lⁱʼ/ᵔᵢ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    sget-object v0, Lⁱʼ/ᵔᵢ;->ﹳٴ:Lⁱʼ/ٴﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lⁱʼ/ᵎﹶ;->ʽ:Ljava/net/URL;

    const/4 p1, 0x0

    iput-object p1, p0, Lⁱʼ/ᵎﹶ;->ˈ:Ljava/lang/String;

    invoke-static {v0, v1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lⁱʼ/ᵎﹶ;->ⁱˊ:Lⁱʼ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lⁱʼ/ᵎﹶ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lⁱʼ/ᵎﹶ;

    invoke-virtual {p0}, Lⁱʼ/ᵎﹶ;->ʽ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lⁱʼ/ᵎﹶ;->ʽ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱʼ/ᵎﹶ;->ⁱˊ:Lⁱʼ/ᵔᵢ;

    iget-object p1, p1, Lⁱʼ/ᵎﹶ;->ⁱˊ:Lⁱʼ/ᵔᵢ;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    iget v0, p0, Lⁱʼ/ᵎﹶ;->ᵔᵢ:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lⁱʼ/ᵎﹶ;->ʽ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lⁱʼ/ᵎﹶ;->ᵔᵢ:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lⁱʼ/ᵎﹶ;->ⁱˊ:Lⁱʼ/ᵔᵢ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lⁱʼ/ᵎﹶ;->ᵔᵢ:I

    :cond_0
    iget v0, p0, Lⁱʼ/ᵎﹶ;->ᵔᵢ:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lⁱʼ/ᵎﹶ;->ʽ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱʼ/ᵎﹶ;->ˈ:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Argument must not be null"

    iget-object v1, p0, Lⁱʼ/ᵎﹶ;->ʽ:Ljava/net/URL;

    invoke-static {v1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱʼ/ᵎﹶ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lⁱʼ/ᵎﹶ;->ˈ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Argument must not be null"

    iget-object v1, p0, Lⁱʼ/ᵎﹶ;->ʽ:Ljava/net/URL;

    invoke-static {v1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "@#&=*+-_.,:!?()/~\'%;$"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lⁱʼ/ᵎﹶ;->ˑﹳ:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lⁱʼ/ᵎﹶ;->ˑﹳ:Ljava/lang/String;

    return-object v0
.end method

.method public final ⁱˊ(Ljava/security/MessageDigest;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱʼ/ᵎﹶ;->ᵎﹶ:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lⁱʼ/ᵎﹶ;->ʽ()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lʼᵔ/ˑﹳ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lⁱʼ/ᵎﹶ;->ᵎﹶ:[B

    :cond_0
    iget-object v0, p0, Lⁱʼ/ᵎﹶ;->ᵎﹶ:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
