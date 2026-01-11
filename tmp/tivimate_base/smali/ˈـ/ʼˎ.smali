.class public final Lˈـ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ᵎﹶ:[B


# instance fields
.field public final ʽ:I

.field public final ˈ:J

.field public final ˑﹳ:I

.field public final ⁱˊ:B

.field public final ﹳٴ:Z

.field public final ﾞᴵ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lˈـ/ʼˎ;->ᵎﹶ:[B

    return-void
.end method

.method public constructor <init>(Lˈـ/ᵔᵢ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lˈـ/ᵔᵢ;->ﹳٴ:Z

    iput-boolean v0, p0, Lˈـ/ʼˎ;->ﹳٴ:Z

    iget-byte v0, p1, Lˈـ/ᵔᵢ;->ⁱˊ:B

    iput-byte v0, p0, Lˈـ/ʼˎ;->ⁱˊ:B

    iget v0, p1, Lˈـ/ᵔᵢ;->ʽ:I

    iput v0, p0, Lˈـ/ʼˎ;->ʽ:I

    iget-wide v0, p1, Lˈـ/ᵔᵢ;->ˈ:J

    iput-wide v0, p0, Lˈـ/ʼˎ;->ˈ:J

    iget v0, p1, Lˈـ/ᵔᵢ;->ˑﹳ:I

    iput v0, p0, Lˈـ/ʼˎ;->ˑﹳ:I

    iget-object p1, p1, Lˈـ/ᵔᵢ;->ﾞᴵ:[B

    iput-object p1, p0, Lˈـ/ʼˎ;->ﾞᴵ:[B

    return-void
.end method

.method public static ﹳٴ(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lˈˊ/ˉˆ;->ʼʼ(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lˈـ/ʼˎ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lˈـ/ʼˎ;

    iget-byte v2, p0, Lˈـ/ʼˎ;->ⁱˊ:B

    iget-byte v3, p1, Lˈـ/ʼˎ;->ⁱˊ:B

    if-ne v2, v3, :cond_2

    iget v2, p0, Lˈـ/ʼˎ;->ʽ:I

    iget v3, p1, Lˈـ/ʼˎ;->ʽ:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lˈـ/ʼˎ;->ﹳٴ:Z

    iget-boolean v3, p1, Lˈـ/ʼˎ;->ﹳٴ:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lˈـ/ʼˎ;->ˈ:J

    iget-wide v4, p1, Lˈـ/ʼˎ;->ˈ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lˈـ/ʼˎ;->ˑﹳ:I

    iget p1, p1, Lˈـ/ʼˎ;->ˑﹳ:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    const/16 v0, 0x20f

    iget-byte v1, p0, Lˈـ/ʼˎ;->ⁱˊ:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lˈـ/ʼˎ;->ʽ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lˈـ/ʼˎ;->ﹳٴ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    iget-wide v2, p0, Lˈـ/ʼˎ;->ˈ:J

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lˈـ/ʼˎ;->ˑﹳ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-byte v0, p0, Lˈـ/ʼˎ;->ⁱˊ:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iget v1, p0, Lˈـ/ʼˎ;->ʽ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lˈـ/ʼˎ;->ˈ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lˈـ/ʼˎ;->ˑﹳ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lˈـ/ʼˎ;->ﹳٴ:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "RtpPacket(payloadType=%d, seq=%d, timestamp=%d, ssrc=%x, marker=%b)"

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
