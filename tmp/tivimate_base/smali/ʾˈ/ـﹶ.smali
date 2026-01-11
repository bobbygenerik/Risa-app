.class public final Lʾˈ/ـﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lʾˈ/ˊᵔ;


# instance fields
.field public final ʽ:J

.field public final ⁱˊ:J

.field public final ﹳٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʾˈ/ˊᵔ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ـﹶ;->Companion:Lʾˈ/ˊᵔ;

    return-void
.end method

.method public synthetic constructor <init>(IJJJ)V
    .locals 2

    .prologue
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lʾˈ/ـﹶ;->ﹳٴ:J

    and-int/lit8 v0, p1, 0x2

    const/16 v1, 0x3e8

    if-nez v0, :cond_0

    int-to-long p4, v1

    mul-long/2addr p4, p2

    :cond_0
    iput-wide p4, p0, Lʾˈ/ـﹶ;->ⁱˊ:J

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    int-to-long p4, v1

    div-long/2addr p2, p4

    iput-wide p2, p0, Lʾˈ/ـﹶ;->ʽ:J

    return-void

    :cond_1
    iput-wide p6, p0, Lʾˈ/ـﹶ;->ʽ:J

    return-void

    :cond_2
    sget-object p2, Lʾˈ/ʻᵎ;->ﹳٴ:Lʾˈ/ʻᵎ;

    invoke-virtual {p2}, Lʾˈ/ʻᵎ;->ˈ()Lˉﾞ/ˈ;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lﹶٴ/ٴﹶ;->ﹳٴ(IILˉﾞ/ˈ;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lʾˈ/ـﹶ;->ﹳٴ:J

    const/16 v0, 0x3e8

    int-to-long v0, v0

    mul-long v2, p1, v0

    iput-wide v2, p0, Lʾˈ/ـﹶ;->ⁱˊ:J

    div-long/2addr p1, v0

    iput-wide p1, p0, Lʾˈ/ـﹶ;->ʽ:J

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
    instance-of v1, p1, Lʾˈ/ـﹶ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lʾˈ/ـﹶ;

    iget-wide v3, p0, Lʾˈ/ـﹶ;->ﹳٴ:J

    iget-wide v5, p1, Lʾˈ/ـﹶ;->ﹳٴ:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/16 v0, 0x20

    iget-wide v1, p0, Lʾˈ/ـﹶ;->ﹳٴ:J

    ushr-long v3, v1, v0

    xor-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Time(ms="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lʾˈ/ـﹶ;->ﹳٴ:J

    const/16 v3, 0x29

    invoke-static {v0, v1, v2, v3}, Lᐧـ/ˈ;->ᵔﹳ(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
