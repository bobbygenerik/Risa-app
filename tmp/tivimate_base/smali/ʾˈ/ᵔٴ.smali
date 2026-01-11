.class public final Lʾˈ/ᵔٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lʾˈ/ˆﾞ;


# instance fields
.field public final ʽ:I

.field public final ˈ:J

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʾˈ/ˆﾞ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ᵔٴ;->Companion:Lʾˈ/ˆﾞ;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 2

    .prologue
    and-int/lit8 v0, p1, 0xf

    const/16 v1, 0xf

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    iput-object p3, p0, Lʾˈ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    iput p4, p0, Lʾˈ/ᵔٴ;->ʽ:I

    iput-wide p5, p0, Lʾˈ/ᵔٴ;->ˈ:J

    return-void

    :cond_0
    sget-object p2, Lʾˈ/ᵔי;->ﹳٴ:Lʾˈ/ᵔי;

    invoke-virtual {p2}, Lʾˈ/ᵔי;->ˈ()Lˉﾞ/ˈ;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lﹶٴ/ٴﹶ;->ﹳٴ(IILˉﾞ/ˈ;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lʾˈ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    iput p3, p0, Lʾˈ/ᵔٴ;->ʽ:I

    iput-wide p4, p0, Lʾˈ/ᵔٴ;->ˈ:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lʾˈ/ᵔٴ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lʾˈ/ᵔٴ;

    iget-object v1, p0, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p1, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lʾˈ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    iget-object v3, p1, Lʾˈ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lʾˈ/ᵔٴ;->ʽ:I

    iget v3, p1, Lʾˈ/ᵔٴ;->ʽ:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lʾˈ/ᵔٴ;->ˈ:J

    iget-wide v5, p1, Lʾˈ/ᵔٴ;->ˈ:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lʾˈ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lʾˈ/ᵔٴ;->ʽ:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    iget-wide v2, p0, Lʾˈ/ᵔٴ;->ˈ:J

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionDetails(sessionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʾˈ/ᵔٴ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionStartTimestampUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lʾˈ/ᵔٴ;->ˈ:J

    const/16 v3, 0x29

    invoke-static {v0, v1, v2, v3}, Lᐧـ/ˈ;->ᵔﹳ(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
