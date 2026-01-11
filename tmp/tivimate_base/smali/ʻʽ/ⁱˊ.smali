.class public final Lʻʽ/ⁱˊ;
.super Lcom/google/android/gms/internal/measurement/ᵎ;
.source "SourceFile"


# static fields
.field public static final ᵔי:[B


# instance fields
.field public final ʽʽ:[B

.field public final ˈٴ:[B

.field public final ˉٴ:[B

.field public final ˊʻ:[B

.field public final ٴʼ:Z

.field public final ٴᵢ:[B

.field public final ᴵᵔ:[B

.field public ᵎˊ:[B

.field public final ᵎⁱ:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lʻʽ/ⁱˊ;->ᵔי:[B

    return-void
.end method

.method public constructor <init>([B[BLjava/lang/String;Ljava/lang/String;[BJZ)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻʽ/ⁱˊ;->ʽʽ:[B

    iput-object p2, p0, Lʻʽ/ⁱˊ;->ˈٴ:[B

    sget-object p1, Lﹶˊ/ﹳٴ;->ʽ:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    iput-object p2, p0, Lʻʽ/ⁱˊ;->ᴵᵔ:[B

    sget-object p2, Lʻʽ/ⁱˊ;->ᵔי:[B

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lʻʽ/ⁱˊ;->ˊʻ:[B

    iput-object p2, p0, Lʻʽ/ⁱˊ;->ٴᵢ:[B

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    move-object p5, p2

    :goto_1
    iput-object p5, p0, Lʻʽ/ⁱˊ;->ˉٴ:[B

    iput-wide p6, p0, Lʻʽ/ⁱˊ;->ᵎⁱ:J

    iput-boolean p8, p0, Lʻʽ/ⁱˊ;->ٴʼ:Z

    return-void
.end method

.method public static ʾˋ(Lˎʿ/ﹳٴ;[BI)I
    .locals 2

    .prologue
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lʻʽ/ⁱˊ;->ᵔי:[B

    :goto_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    array-length p0, p1

    add-int/2addr p2, p0

    return p2
.end method


# virtual methods
.method public final ᵢˏ(Lˎʿ/ﹳٴ;)V
    .locals 5

    .prologue
    const-string v0, "NTLMSSP\u0000"

    sget-object v1, Lᴵʿ/ⁱˊ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ﾞᴵ(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-boolean v0, p0, Lʻʽ/ⁱˊ;->ٴʼ:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget-wide v1, p0, Lʻʽ/ⁱˊ;->ᵎⁱ:J

    sget-object v3, Lʻʽ/ˑﹳ;->ᴵᵔ:Lʻʽ/ˑﹳ;

    invoke-static {v1, v2, v3}, Lᴵʿ/ﹳٴ;->ⁱˊ(JLᴵʿ/ʽ;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x8

    :cond_1
    iget-object v4, p0, Lʻʽ/ⁱˊ;->ʽʽ:[B

    invoke-static {p1, v4, v0}, Lʻʽ/ⁱˊ;->ʾˋ(Lˎʿ/ﹳٴ;[BI)I

    move-result v0

    iget-object v4, p0, Lʻʽ/ⁱˊ;->ˈٴ:[B

    invoke-static {p1, v4, v0}, Lʻʽ/ⁱˊ;->ʾˋ(Lˎʿ/ﹳٴ;[BI)I

    move-result v0

    iget-object v4, p0, Lʻʽ/ⁱˊ;->ˊʻ:[B

    invoke-static {p1, v4, v0}, Lʻʽ/ⁱˊ;->ʾˋ(Lˎʿ/ﹳٴ;[BI)I

    move-result v0

    iget-object v4, p0, Lʻʽ/ⁱˊ;->ᴵᵔ:[B

    invoke-static {p1, v4, v0}, Lʻʽ/ⁱˊ;->ʾˋ(Lˎʿ/ﹳٴ;[BI)I

    move-result v0

    iget-object v4, p0, Lʻʽ/ⁱˊ;->ٴᵢ:[B

    invoke-static {p1, v4, v0}, Lʻʽ/ⁱˊ;->ʾˋ(Lˎʿ/ﹳٴ;[BI)I

    move-result v0

    sget-object v4, Lʻʽ/ˑﹳ;->ʽʽ:Lʻʽ/ˑﹳ;

    invoke-static {v1, v2, v4}, Lᴵʿ/ﹳٴ;->ⁱˊ(JLᴵʿ/ʽ;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lʻʽ/ⁱˊ;->ˉٴ:[B

    invoke-static {p1, v4, v0}, Lʻʽ/ⁱˊ;->ʾˋ(Lˎʿ/ﹳٴ;[BI)I

    goto :goto_1

    :cond_2
    sget-object v4, Lʻʽ/ⁱˊ;->ᵔי:[B

    invoke-static {p1, v4, v0}, Lʻʽ/ⁱˊ;->ʾˋ(Lˎʿ/ﹳٴ;[BI)I

    :goto_1
    invoke-virtual {p1, v1, v2}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-static {v1, v2, v3}, Lᴵʿ/ﹳٴ;->ⁱˊ(JLᴵʿ/ʽ;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lˎʿ/ﹳٴ;

    invoke-direct {v0}, Lˎʿ/ⁱˊ;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    const/16 v1, 0x1db0

    invoke-virtual {v0, v1}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    invoke-virtual {v0}, Lˎʿ/ⁱˊ;->ⁱˊ()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p1, v1, v0}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    :cond_3
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
