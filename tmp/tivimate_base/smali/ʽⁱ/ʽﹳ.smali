.class public Lʽⁱ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʽⁱ/ˏי;

    invoke-direct {v0}, Lʽⁱ/ˏי;-><init>()V

    new-instance v1, Lʽⁱ/ʽﹳ;

    invoke-direct {v1, v0}, Lʽⁱ/ʽﹳ;-><init>(Lʽⁱ/ˏי;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x5

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x6

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x7

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(Lʽⁱ/ˏי;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget-wide v0, p1, Lʽⁱ/ˏי;->ﹳٴ:J

    iput-wide v0, p0, Lʽⁱ/ʽﹳ;->ﹳٴ:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lʽⁱ/ʽﹳ;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʽⁱ/ʽﹳ;

    iget-wide v1, p0, Lʽⁱ/ʽﹳ;->ﹳٴ:J

    iget-wide v3, p1, Lʽⁱ/ʽﹳ;->ﹳٴ:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 5

    const-wide/16 v0, 0x0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lʽⁱ/ʽﹳ;->ﹳٴ:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    const v1, 0xe1781

    mul-int/2addr v0, v1

    return v0
.end method
