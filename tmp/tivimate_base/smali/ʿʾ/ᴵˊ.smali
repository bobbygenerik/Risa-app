.class public final Lʿʾ/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˑﹳ;


# static fields
.field public static final ˆʾ:Lʿٴ/ˆʾ;


# instance fields
.field public final ʼˎ:Lʼᵔ/ﾞʻ;

.field public final ʽ:Lʼᵔ/ˑﹳ;

.field public final ˈ:Lʼᵔ/ˑﹳ;

.field public final ˑﹳ:I

.field public final ᵎﹶ:Ljava/lang/Class;

.field public final ᵔᵢ:Lʼᵔ/ᵔᵢ;

.field public final ⁱˊ:Lיᐧ/ﾞᴵ;

.field public final ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lʿٴ/ˆʾ;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lʿٴ/ˆʾ;-><init>(J)V

    sput-object v0, Lʿʾ/ᴵˊ;->ˆʾ:Lʿٴ/ˆʾ;

    return-void
.end method

.method public constructor <init>(Lיᐧ/ﾞᴵ;Lʼᵔ/ˑﹳ;Lʼᵔ/ˑﹳ;IILʼᵔ/ﾞʻ;Ljava/lang/Class;Lʼᵔ/ᵔᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿʾ/ᴵˊ;->ⁱˊ:Lיᐧ/ﾞᴵ;

    iput-object p2, p0, Lʿʾ/ᴵˊ;->ʽ:Lʼᵔ/ˑﹳ;

    iput-object p3, p0, Lʿʾ/ᴵˊ;->ˈ:Lʼᵔ/ˑﹳ;

    iput p4, p0, Lʿʾ/ᴵˊ;->ˑﹳ:I

    iput p5, p0, Lʿʾ/ᴵˊ;->ﾞᴵ:I

    iput-object p6, p0, Lʿʾ/ᴵˊ;->ʼˎ:Lʼᵔ/ﾞʻ;

    iput-object p7, p0, Lʿʾ/ᴵˊ;->ᵎﹶ:Ljava/lang/Class;

    iput-object p8, p0, Lʿʾ/ᴵˊ;->ᵔᵢ:Lʼᵔ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lʿʾ/ᴵˊ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lʿʾ/ᴵˊ;

    iget v0, p0, Lʿʾ/ᴵˊ;->ﾞᴵ:I

    iget v2, p1, Lʿʾ/ᴵˊ;->ﾞᴵ:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lʿʾ/ᴵˊ;->ˑﹳ:I

    iget v2, p1, Lʿʾ/ᴵˊ;->ˑﹳ:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lʿʾ/ᴵˊ;->ʼˎ:Lʼᵔ/ﾞʻ;

    iget-object v2, p1, Lʿʾ/ᴵˊ;->ʼˎ:Lʼᵔ/ﾞʻ;

    invoke-static {v0, v2}, Lʿٴ/ᵔʾ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/ᴵˊ;->ᵎﹶ:Ljava/lang/Class;

    iget-object v2, p1, Lʿʾ/ᴵˊ;->ᵎﹶ:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/ᴵˊ;->ʽ:Lʼᵔ/ˑﹳ;

    iget-object v2, p1, Lʿʾ/ᴵˊ;->ʽ:Lʼᵔ/ˑﹳ;

    invoke-interface {v0, v2}, Lʼᵔ/ˑﹳ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/ᴵˊ;->ˈ:Lʼᵔ/ˑﹳ;

    iget-object v2, p1, Lʿʾ/ᴵˊ;->ˈ:Lʼᵔ/ˑﹳ;

    invoke-interface {v0, v2}, Lʼᵔ/ˑﹳ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/ᴵˊ;->ᵔᵢ:Lʼᵔ/ᵔᵢ;

    iget-object p1, p1, Lʿʾ/ᴵˊ;->ᵔᵢ:Lʼᵔ/ᵔᵢ;

    invoke-virtual {v0, p1}, Lʼᵔ/ᵔᵢ;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lʿʾ/ᴵˊ;->ʽ:Lʼᵔ/ˑﹳ;

    invoke-interface {v0}, Lʼᵔ/ˑﹳ;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʿʾ/ᴵˊ;->ˈ:Lʼᵔ/ˑﹳ;

    invoke-interface {v1}, Lʼᵔ/ˑﹳ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lʿʾ/ᴵˊ;->ˑﹳ:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lʿʾ/ᴵˊ;->ﾞᴵ:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lʿʾ/ᴵˊ;->ʼˎ:Lʼᵔ/ﾞʻ;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lʿʾ/ᴵˊ;->ᵎﹶ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʿʾ/ᴵˊ;->ᵔᵢ:Lʼᵔ/ᵔᵢ;

    iget-object v1, v1, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    invoke-virtual {v1}, Lʿٴ/ʽ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʿʾ/ᴵˊ;->ʽ:Lʼᵔ/ˑﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/ᴵˊ;->ˈ:Lʼᵔ/ˑﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʿʾ/ᴵˊ;->ˑﹳ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʿʾ/ᴵˊ;->ﾞᴵ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/ᴵˊ;->ᵎﹶ:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/ᴵˊ;->ʼˎ:Lʼᵔ/ﾞʻ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/ᴵˊ;->ᵔᵢ:Lʼᵔ/ᵔᵢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(Ljava/security/MessageDigest;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lʿʾ/ᴵˊ;->ⁱˊ:Lיᐧ/ﾞᴵ;

    const-class v1, [B

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lיᐧ/ﾞᴵ;->ⁱˊ:Lיᐧ/ˑﹳ;

    iget-object v3, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lיᐧ/ᵔᵢ;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lיᐧ/ˑﹳ;->ﹶˎ()Lיᐧ/ᵔᵢ;

    move-result-object v3

    :cond_0
    check-cast v3, Lיᐧ/ˈ;

    const/16 v2, 0x8

    iput v2, v3, Lיᐧ/ˈ;->ⁱˊ:I

    iput-object v1, v3, Lיᐧ/ˈ;->ʽ:Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Lיᐧ/ﾞᴵ;->ﾞᴵ(Lיᐧ/ˈ;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v2, p0, Lʿʾ/ᴵˊ;->ˑﹳ:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v2, p0, Lʿʾ/ᴵˊ;->ﾞᴵ:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    iget-object v0, p0, Lʿʾ/ᴵˊ;->ˈ:Lʼᵔ/ˑﹳ;

    invoke-interface {v0, p1}, Lʼᵔ/ˑﹳ;->ⁱˊ(Ljava/security/MessageDigest;)V

    iget-object v0, p0, Lʿʾ/ᴵˊ;->ʽ:Lʼᵔ/ˑﹳ;

    invoke-interface {v0, p1}, Lʼᵔ/ˑﹳ;->ⁱˊ(Ljava/security/MessageDigest;)V

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lʿʾ/ᴵˊ;->ʼˎ:Lʼᵔ/ﾞʻ;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lʼᵔ/ˑﹳ;->ⁱˊ(Ljava/security/MessageDigest;)V

    :cond_1
    iget-object v0, p0, Lʿʾ/ᴵˊ;->ᵔᵢ:Lʼᵔ/ᵔᵢ;

    invoke-virtual {v0, p1}, Lʼᵔ/ᵔᵢ;->ⁱˊ(Ljava/security/MessageDigest;)V

    sget-object v0, Lʿʾ/ᴵˊ;->ˆʾ:Lʿٴ/ˆʾ;

    iget-object v2, p0, Lʿʾ/ᴵˊ;->ᵎﹶ:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lʿٴ/ˆʾ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lʼᵔ/ˑﹳ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lʿٴ/ˆʾ;->ˈ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1, v3}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lʿʾ/ᴵˊ;->ⁱˊ:Lיᐧ/ﾞᴵ;

    invoke-virtual {p1, v1}, Lיᐧ/ﾞᴵ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
