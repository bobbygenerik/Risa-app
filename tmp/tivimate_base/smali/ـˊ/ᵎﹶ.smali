.class public final Lـˊ/ᵎﹶ;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final ʽʽ:[B

.field public final ʾˋ:Lـˊ/ﾞᴵ;

.field public ˈٴ:Z

.field public final ᴵˊ:Lـˊ/ᵔᵢ;

.field public ᴵᵔ:Z


# direct methods
.method public constructor <init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lـˊ/ᵎﹶ;->ˈٴ:Z

    iput-boolean v0, p0, Lـˊ/ᵎﹶ;->ᴵᵔ:Z

    iput-object p1, p0, Lـˊ/ᵎﹶ;->ʾˋ:Lـˊ/ﾞᴵ;

    iput-object p2, p0, Lـˊ/ᵎﹶ;->ᴵˊ:Lـˊ/ᵔᵢ;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lـˊ/ᵎﹶ;->ʽʽ:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lـˊ/ᵎﹶ;->ᴵᵔ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lـˊ/ᵎﹶ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0}, Lـˊ/ﾞᴵ;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lـˊ/ᵎﹶ;->ᴵᵔ:Z

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    iget-object v0, p0, Lـˊ/ᵎﹶ;->ʽʽ:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lـˊ/ᵎﹶ;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v3

    :cond_0
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lـˊ/ᵎﹶ;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3

    .prologue
    iget-boolean v0, p0, Lـˊ/ᵎﹶ;->ᴵᵔ:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-boolean v0, p0, Lـˊ/ᵎﹶ;->ˈٴ:Z

    iget-object v2, p0, Lـˊ/ᵎﹶ;->ʾˋ:Lـˊ/ﾞᴵ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lـˊ/ᵎﹶ;->ᴵˊ:Lـˊ/ᵔᵢ;

    invoke-interface {v2, v0}, Lـˊ/ﾞᴵ;->ʽʽ(Lـˊ/ᵔᵢ;)J

    iput-boolean v1, p0, Lـˊ/ᵎﹶ;->ˈٴ:Z

    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method
