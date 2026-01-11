.class public final Lᴵˋ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˆʾ:Lᴵˋ/ˑﹳ;


# instance fields
.field public final ʼˎ:Ljava/util/Set;

.field public final ʽ:Z

.field public final ˈ:Z

.field public final ˑﹳ:Z

.field public final ᵎﹶ:J

.field public final ᵔᵢ:J

.field public final ⁱˊ:Lˆﹶ/ᵔᵢ;

.field public final ﹳٴ:I

.field public final ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᴵˋ/ˑﹳ;

    invoke-direct {v0}, Lᴵˋ/ˑﹳ;-><init>()V

    sput-object v0, Lᴵˋ/ˑﹳ;->ˆʾ:Lᴵˋ/ˑﹳ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˆﹶ/ᵔᵢ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˆﹶ/ᵔᵢ;-><init>(Landroid/net/NetworkRequest;)V

    iput-object v0, p0, Lᴵˋ/ˑﹳ;->ⁱˊ:Lˆﹶ/ᵔᵢ;

    const/4 v0, 0x1

    iput v0, p0, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lᴵˋ/ˑﹳ;->ʽ:Z

    iput-boolean v0, p0, Lᴵˋ/ˑﹳ;->ˈ:Z

    iput-boolean v0, p0, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    iput-boolean v0, p0, Lᴵˋ/ˑﹳ;->ﾞᴵ:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lᴵˋ/ˑﹳ;->ᵎﹶ:J

    iput-wide v0, p0, Lᴵˋ/ˑﹳ;->ᵔᵢ:J

    sget-object v0, Lﹶˈ/ﹳᐧ;->ʾˋ:Lﹶˈ/ﹳᐧ;

    iput-object v0, p0, Lᴵˋ/ˑﹳ;->ʼˎ:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lˆﹶ/ᵔᵢ;IZZZZJJLjava/util/LinkedHashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵˋ/ˑﹳ;->ⁱˊ:Lˆﹶ/ᵔᵢ;

    iput p2, p0, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    iput-boolean p3, p0, Lᴵˋ/ˑﹳ;->ʽ:Z

    iput-boolean p4, p0, Lᴵˋ/ˑﹳ;->ˈ:Z

    iput-boolean p5, p0, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    iput-boolean p6, p0, Lᴵˋ/ˑﹳ;->ﾞᴵ:Z

    iput-wide p7, p0, Lᴵˋ/ˑﹳ;->ᵎﹶ:J

    iput-wide p9, p0, Lᴵˋ/ˑﹳ;->ᵔᵢ:J

    iput-object p11, p0, Lᴵˋ/ˑﹳ;->ʼˎ:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lᴵˋ/ˑﹳ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lᴵˋ/ˑﹳ;->ʽ:Z

    iput-boolean v0, p0, Lᴵˋ/ˑﹳ;->ʽ:Z

    iget-boolean v0, p1, Lᴵˋ/ˑﹳ;->ˈ:Z

    iput-boolean v0, p0, Lᴵˋ/ˑﹳ;->ˈ:Z

    iget-object v0, p1, Lᴵˋ/ˑﹳ;->ⁱˊ:Lˆﹶ/ᵔᵢ;

    iput-object v0, p0, Lᴵˋ/ˑﹳ;->ⁱˊ:Lˆﹶ/ᵔᵢ;

    iget v0, p1, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    iput v0, p0, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    iget-boolean v0, p1, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    iput-boolean v0, p0, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    iget-boolean v0, p1, Lᴵˋ/ˑﹳ;->ﾞᴵ:Z

    iput-boolean v0, p0, Lᴵˋ/ˑﹳ;->ﾞᴵ:Z

    iget-object v0, p1, Lᴵˋ/ˑﹳ;->ʼˎ:Ljava/util/Set;

    iput-object v0, p0, Lᴵˋ/ˑﹳ;->ʼˎ:Ljava/util/Set;

    iget-wide v0, p1, Lᴵˋ/ˑﹳ;->ᵎﹶ:J

    iput-wide v0, p0, Lᴵˋ/ˑﹳ;->ᵎﹶ:J

    iget-wide v0, p1, Lᴵˋ/ˑﹳ;->ᵔᵢ:J

    iput-wide v0, p0, Lᴵˋ/ˑﹳ;->ᵔᵢ:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_a

    const-class v0, Lᴵˋ/ˑﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lᴵˋ/ˑﹳ;

    iget-boolean v0, p0, Lᴵˋ/ˑﹳ;->ʽ:Z

    iget-boolean v1, p1, Lᴵˋ/ˑﹳ;->ʽ:Z

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lᴵˋ/ˑﹳ;->ˈ:Z

    iget-boolean v1, p1, Lᴵˋ/ˑﹳ;->ˈ:Z

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    iget-boolean v1, p1, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lᴵˋ/ˑﹳ;->ﾞᴵ:Z

    iget-boolean v1, p1, Lᴵˋ/ˑﹳ;->ﾞᴵ:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lᴵˋ/ˑﹳ;->ᵎﹶ:J

    iget-wide v2, p1, Lᴵˋ/ˑﹳ;->ᵎﹶ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Lᴵˋ/ˑﹳ;->ᵔᵢ:J

    iget-wide v2, p1, Lᴵˋ/ˑﹳ;->ᵔᵢ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lᴵˋ/ˑﹳ;->ﹳٴ()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {p1}, Lᴵˋ/ˑﹳ;->ﹳٴ()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget v0, p0, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    iget v1, p1, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    if-eq v0, v1, :cond_9

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lᴵˋ/ˑﹳ;->ʼˎ:Ljava/util/Set;

    iget-object p1, p1, Lᴵˋ/ˑﹳ;->ʼˎ:Ljava/util/Set;

    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    iget v0, p0, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lᴵˋ/ˑﹳ;->ʽ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lᴵˋ/ˑﹳ;->ˈ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lᴵˋ/ˑﹳ;->ﾞᴵ:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lᴵˋ/ˑﹳ;->ᵎﹶ:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lᴵˋ/ˑﹳ;->ᵔᵢ:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lᴵˋ/ˑﹳ;->ʼˎ:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lᴵˋ/ˑﹳ;->ﹳٴ()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constraints{requiredNetworkType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    invoke-static {v1}, Lᐧـ/ˈ;->ʻٴ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requiresCharging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lᴵˋ/ˑﹳ;->ʽ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresDeviceIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lᴵˋ/ˑﹳ;->ˈ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresBatteryNotLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresStorageNotLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lᴵˋ/ˑﹳ;->ﾞᴵ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contentTriggerUpdateDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lᴵˋ/ˑﹳ;->ᵎﹶ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentTriggerMaxDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lᴵˋ/ˑﹳ;->ᵔᵢ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentUriTriggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵˋ/ˑﹳ;->ʼˎ:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ()Z
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lᴵˋ/ˑﹳ;->ʼˎ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ﹳٴ()Landroid/net/NetworkRequest;
    .locals 1

    iget-object v0, p0, Lᴵˋ/ˑﹳ;->ⁱˊ:Lˆﹶ/ᵔᵢ;

    iget-object v0, v0, Lˆﹶ/ᵔᵢ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    return-object v0
.end method
