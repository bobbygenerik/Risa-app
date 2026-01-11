.class public abstract Lﾞˉ/ﹳٴ;
.super Lʽٴ/ˈ;
.source "SourceFile"


# instance fields
.field public ʼˎ:S

.field public ʽ:B

.field public ˆʾ:I

.field public ˈ:B

.field public ˑﹳ:Lﾞˉ/ˈ;

.field public ᵎﹶ:[B

.field public ᵔᵢ:S

.field public ﾞᴵ:Ljava/util/EnumSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput-byte v0, p0, Lﾞˉ/ﹳٴ;->ʽ:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lﾞˉ/ﹳٴ;->ˈ:B

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lﾞˉ/ﹳٴ;->ᵎﹶ:[B

    const/16 v1, 0x10

    iput-short v1, p0, Lﾞˉ/ﹳٴ;->ᵔᵢ:S

    iput-short v0, p0, Lﾞˉ/ﹳٴ;->ʼˎ:S

    iput v0, p0, Lﾞˉ/ﹳٴ;->ˆʾ:I

    return-void

    :array_0
    .array-data 1
        0x10t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public ٴʼ(Lـʾ/ᵔﹳ;)V
    .locals 7

    .prologue
    iget-object v0, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˎﹶ/ˑﹳ;

    invoke-virtual {p1}, Lـʾ/ᵔﹳ;->ʽﹳ()B

    move-result v1

    iput-byte v1, p0, Lﾞˉ/ﹳٴ;->ʽ:B

    invoke-virtual {p1}, Lـʾ/ᵔﹳ;->ʽﹳ()B

    move-result v1

    iput-byte v1, p0, Lﾞˉ/ﹳٴ;->ˈ:B

    const/4 v2, 0x5

    iget-byte v3, p0, Lﾞˉ/ﹳٴ;->ʽ:B

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lـʾ/ᵔﹳ;->ʽﹳ()B

    move-result v1

    int-to-long v1, v1

    const-class v3, Lﾞˉ/ˈ;

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v6}, Lᴵʿ/ﹳٴ;->ﾞᴵ(JLjava/lang/Class;Lٴˎ/ﹳٴ;)Lᴵʿ/ʽ;

    move-result-object v1

    check-cast v1, Lﾞˉ/ˈ;

    if-eqz v1, :cond_2

    iput-object v1, p0, Lﾞˉ/ﹳٴ;->ˑﹳ:Lﾞˉ/ˈ;

    invoke-virtual {p1}, Lـʾ/ᵔﹳ;->ʽﹳ()B

    move-result p1

    int-to-long v1, p1

    const-class p1, Lﾞˉ/ˑﹳ;

    invoke-static {v1, v2, p1}, Lᴵʿ/ﹳٴ;->ˈ(JLjava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lﾞˉ/ﹳٴ;->ﾞᴵ:Ljava/util/EnumSet;

    const/4 p1, 0x4

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Lˎﹶ/ˑﹳ;->readFully([B)V

    aget-byte v1, p1, v5

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v4

    if-nez v1, :cond_0

    iput-object p1, p0, Lﾞˉ/ﹳٴ;->ᵎﹶ:[B

    invoke-virtual {v0}, Lˎﹶ/ˑﹳ;->readUnsignedShort()I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lﾞˉ/ﹳٴ;->ᵔᵢ:S

    invoke-virtual {v0}, Lˎﹶ/ˑﹳ;->readUnsignedShort()I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lﾞˉ/ﹳٴ;->ʼˎ:S

    invoke-virtual {v0}, Lˎﹶ/ˑﹳ;->readInt()I

    move-result p1

    iput p1, p0, Lﾞˉ/ﹳٴ;->ˆʾ:I

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    aget-byte p1, p1, v4

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const-string p1, "Floating-Point representation mismatch: %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    aget-byte p1, p1, v5

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const-string p1, "Integer and Character representation mismatch: %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v5

    const-string v1, "PDU type invalid: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    iget-byte v0, p0, Lﾞˉ/ﹳٴ;->ʽ:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iget-byte v1, p0, Lﾞˉ/ﹳٴ;->ˈ:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    const-string v0, "Version mismatch: %d.%d != 5.0"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ᵎⁱ(Lˊⁱ/ˑﹳ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﾞˉ/ﹳٴ;->ˑﹳ:Lﾞˉ/ˈ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﾞˉ/ﹳٴ;->ﾞᴵ:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lﾞˉ/ﹳٴ;->ʽ:B

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵˊ(I)V

    iget-byte v0, p0, Lﾞˉ/ﹳٴ;->ˈ:B

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵˊ(I)V

    iget-object v0, p0, Lﾞˉ/ﹳٴ;->ˑﹳ:Lﾞˉ/ˈ;

    iget v0, v0, Lﾞˉ/ˈ;->ʾˋ:I

    int-to-long v0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵˊ(I)V

    iget-object v0, p0, Lﾞˉ/ﹳٴ;->ﾞᴵ:Ljava/util/EnumSet;

    invoke-static {v0}, Lᴵʿ/ﹳٴ;->ˑﹳ(Ljava/util/Collection;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵˊ(I)V

    iget-object v0, p0, Lﾞˉ/ﹳٴ;->ᵎﹶ:[B

    iget-object v1, p1, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˎﹶ/ﾞᴵ;

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write([B)V

    iget-short v0, p0, Lﾞˉ/ﹳٴ;->ᵔᵢ:S

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    iget v0, p0, Lﾞˉ/ﹳٴ;->ˆʾ:I

    invoke-virtual {p1, v0}, Lˊⁱ/ˑﹳ;->ʽʽ(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid PFC flag(s): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lﾞˉ/ﹳٴ;->ﾞᴵ:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid PDU type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lﾞˉ/ﹳٴ;->ˑﹳ:Lﾞˉ/ˈ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
