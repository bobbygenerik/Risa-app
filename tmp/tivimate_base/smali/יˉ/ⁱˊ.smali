.class public final Lיˉ/ⁱˊ;
.super Lⁱי/ˑﹳ;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final ʼˈ:Lיˉ/ﹳٴ;

.field public ʿ:Z

.field public ʿᵢ:J

.field public final ˈⁱ:Lˆﹳ/ﹳٴ;

.field public ˉـ:Z

.field public final ـˏ:Lⁱי/ʻٴ;

.field public ᐧﾞ:J

.field public ᴵˑ:Lˈˋ/ʾˊ;

.field public ᵎᵔ:Lʽⁱ/ٴᵢ;

.field public final ﹳـ:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lⁱי/ʻٴ;Landroid/os/Looper;)V
    .locals 1

    .prologue
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lⁱי/ˑﹳ;-><init>(I)V

    iput-object p1, p0, Lיˉ/ⁱˊ;->ـˏ:Lⁱי/ʻٴ;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Lיˉ/ⁱˊ;->ﹳـ:Landroid/os/Handler;

    sget-object p1, Lיˉ/ﹳٴ;->ﹳٴ:Lיˉ/ﹳٴ;

    iput-object p1, p0, Lיˉ/ⁱˊ;->ʼˈ:Lיˉ/ﹳٴ;

    new-instance p1, Lˆﹳ/ﹳٴ;

    invoke-direct {p1}, Lˆﹳ/ﹳٴ;-><init>()V

    iput-object p1, p0, Lיˉ/ⁱˊ;->ˈⁱ:Lˆﹳ/ﹳٴ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lיˉ/ⁱˊ;->ᐧﾞ:J

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lʽⁱ/ٴᵢ;

    invoke-virtual {p0, p1}, Lיˉ/ⁱˊ;->ᴵᵔ(Lʽⁱ/ٴᵢ;)V

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final ʻٴ([Lʽⁱ/ﹳᐧ;JJLﹳᵢ/ᵢˏ;)V
    .locals 2

    .prologue
    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lיˉ/ⁱˊ;->ʼˈ:Lיˉ/ﹳٴ;

    invoke-virtual {p2, p1}, Lיˉ/ﹳٴ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Lˈˋ/ʾˊ;

    move-result-object p1

    iput-object p1, p0, Lיˉ/ⁱˊ;->ᴵˑ:Lˈˋ/ʾˊ;

    iget-object p1, p0, Lיˉ/ⁱˊ;->ᵎᵔ:Lʽⁱ/ٴᵢ;

    if-eqz p1, :cond_1

    iget-wide p2, p1, Lʽⁱ/ٴᵢ;->ⁱˊ:J

    iget-wide v0, p0, Lיˉ/ⁱˊ;->ᐧﾞ:J

    add-long/2addr v0, p2

    sub-long/2addr v0, p4

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lʽⁱ/ٴᵢ;

    iget-object p1, p1, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    invoke-direct {p2, v0, v1, p1}, Lʽⁱ/ٴᵢ;-><init>(J[Lʽⁱ/ˊʻ;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lיˉ/ⁱˊ;->ᵎᵔ:Lʽⁱ/ٴᵢ;

    :cond_1
    iput-wide p4, p0, Lיˉ/ⁱˊ;->ᐧﾞ:J

    return-void
.end method

.method public final ʽʽ(Lʽⁱ/ٴᵢ;Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    invoke-interface {v2}, Lʽⁱ/ˊʻ;->ⁱˊ()Lʽⁱ/ﹳᐧ;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lיˉ/ⁱˊ;->ʼˈ:Lיˉ/ﹳٴ;

    invoke-virtual {v3, v2}, Lיˉ/ﹳٴ;->ⁱˊ(Lʽⁱ/ﹳᐧ;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lיˉ/ﹳٴ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Lˈˋ/ʾˊ;

    move-result-object v2

    aget-object v1, v1, v0

    invoke-interface {v1}, Lʽⁱ/ˊʻ;->ʽ()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lיˉ/ⁱˊ;->ˈⁱ:Lˆﹳ/ﹳٴ;

    invoke-virtual {v3}, Lﹳⁱ/ˑﹳ;->ˏי()V

    array-length v4, v1

    invoke-virtual {v3, v4}, Lﹳⁱ/ˑﹳ;->ʻٴ(I)V

    iget-object v4, v3, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lﹳⁱ/ˑﹳ;->ـˆ()V

    invoke-virtual {v2, v3}, Lˈˋ/ʾˊ;->ﾞʻ(Lˆﹳ/ﹳٴ;)Lʽⁱ/ٴᵢ;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, p2}, Lיˉ/ⁱˊ;->ʽʽ(Lʽⁱ/ٴᵢ;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final ʾˋ(Lʽⁱ/ﹳᐧ;)I
    .locals 2

    .prologue
    iget-object v0, p0, Lיˉ/ⁱˊ;->ʼˈ:Lיˉ/ﹳٴ;

    invoke-virtual {v0, p1}, Lיˉ/ﹳٴ;->ⁱˊ(Lʽⁱ/ﹳᐧ;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget p1, p1, Lʽⁱ/ﹳᐧ;->ˈʿ:I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1, v1, v1, v1}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p1

    return p1

    :cond_1
    invoke-static {v1, v1, v1, v1}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p1

    return p1
.end method

.method public final ʾᵎ(JJ)V
    .locals 5

    .prologue
    const/4 p3, 0x1

    move p4, p3

    :cond_0
    :goto_0
    if-eqz p4, :cond_6

    iget-boolean p4, p0, Lיˉ/ⁱˊ;->ˉـ:Z

    const/4 v0, 0x0

    if-nez p4, :cond_3

    iget-object p4, p0, Lיˉ/ⁱˊ;->ᵎᵔ:Lʽⁱ/ٴᵢ;

    if-nez p4, :cond_3

    iget-object p4, p0, Lיˉ/ⁱˊ;->ˈⁱ:Lˆﹳ/ﹳٴ;

    invoke-virtual {p4}, Lﹳⁱ/ˑﹳ;->ˏי()V

    iget-object v1, p0, Lⁱי/ˑﹳ;->ʽʽ:Lـʾ/ᵔﹳ;

    invoke-virtual {v1}, Lـʾ/ᵔﹳ;->ﾞᴵ()V

    invoke-virtual {p0, v1, p4, v0}, Lⁱי/ˑﹳ;->ـˆ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean p3, p0, Lיˉ/ⁱˊ;->ˉـ:Z

    goto :goto_1

    :cond_1
    iget-wide v1, p4, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iget-wide v3, p0, Lⁱי/ˑﹳ;->ᵔי:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    iget-wide v1, p0, Lיˉ/ⁱˊ;->ʿᵢ:J

    iput-wide v1, p4, Lˆﹳ/ﹳٴ;->ᵎˊ:J

    invoke-virtual {p4}, Lﹳⁱ/ˑﹳ;->ـˆ()V

    iget-object v1, p0, Lיˉ/ⁱˊ;->ᴵˑ:Lˈˋ/ʾˊ;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1, p4}, Lˈˋ/ʾˊ;->ﾞʻ(Lˆﹳ/ﹳٴ;)Lʽⁱ/ٴᵢ;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lיˉ/ⁱˊ;->ʽʽ(Lʽⁱ/ٴᵢ;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lʽⁱ/ٴᵢ;

    iget-wide v3, p4, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    invoke-virtual {p0, v3, v4}, Lיˉ/ⁱˊ;->ˈٴ(J)J

    move-result-wide v3

    new-array p4, v0, [Lʽⁱ/ˊʻ;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lʽⁱ/ˊʻ;

    invoke-direct {v1, v3, v4, p4}, Lʽⁱ/ٴᵢ;-><init>(J[Lʽⁱ/ˊʻ;)V

    iput-object v1, p0, Lיˉ/ⁱˊ;->ᵎᵔ:Lʽⁱ/ٴᵢ;

    goto :goto_1

    :cond_2
    const/4 p4, -0x5

    if-ne v2, p4, :cond_3

    iget-object p4, v1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p4, Lʽⁱ/ﹳᐧ;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p4, Lʽⁱ/ﹳᐧ;->יـ:J

    iput-wide v1, p0, Lיˉ/ⁱˊ;->ʿᵢ:J

    :cond_3
    :goto_1
    iget-object p4, p0, Lיˉ/ⁱˊ;->ᵎᵔ:Lʽⁱ/ٴᵢ;

    if-eqz p4, :cond_5

    iget-wide v1, p4, Lʽⁱ/ٴᵢ;->ⁱˊ:J

    invoke-virtual {p0, p1, p2}, Lיˉ/ⁱˊ;->ˈٴ(J)J

    move-result-wide v3

    cmp-long p4, v1, v3

    if-gtz p4, :cond_5

    iget-object p4, p0, Lיˉ/ⁱˊ;->ᵎᵔ:Lʽⁱ/ٴᵢ;

    iget-object v0, p0, Lיˉ/ⁱˊ;->ﹳـ:Landroid/os/Handler;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p3, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p4}, Lיˉ/ⁱˊ;->ᴵᵔ(Lʽⁱ/ٴᵢ;)V

    :goto_2
    const/4 p4, 0x0

    iput-object p4, p0, Lיˉ/ⁱˊ;->ᵎᵔ:Lʽⁱ/ٴᵢ;

    move p4, p3

    goto :goto_3

    :cond_5
    move p4, v0

    :goto_3
    iget-boolean v0, p0, Lיˉ/ⁱˊ;->ˉـ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lיˉ/ⁱˊ;->ᵎᵔ:Lʽⁱ/ٴᵢ;

    if-nez v0, :cond_0

    iput-boolean p3, p0, Lיˉ/ⁱˊ;->ʿ:Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final ˆʾ()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public final ˈٴ(J)J
    .locals 7

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-wide v5, p0, Lיˉ/ⁱˊ;->ᐧﾞ:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-wide v0, p0, Lיˉ/ⁱˊ;->ᐧﾞ:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final ˉʿ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ˉˆ()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lיˉ/ⁱˊ;->ᵎᵔ:Lʽⁱ/ٴᵢ;

    iput-object v0, p0, Lיˉ/ⁱˊ;->ᴵˑ:Lˈˋ/ʾˊ;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיˉ/ⁱˊ;->ᐧﾞ:J

    return-void
.end method

.method public final ᴵᵔ(Lʽⁱ/ٴᵢ;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lיˉ/ⁱˊ;->ـˏ:Lⁱי/ʻٴ;

    iget-object v1, v0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iget-object v2, v1, Lⁱי/ʼʼ;->ⁱᴵ:Lʽⁱ/ᴵᵔ;

    iget-object v3, v1, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    invoke-virtual {v2}, Lʽⁱ/ᴵᵔ;->ﹳٴ()Lʽⁱ/ˈٴ;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p1, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget-object v5, v5, v4

    invoke-interface {v5, v2}, Lʽⁱ/ˊʻ;->ﹳٴ(Lʽⁱ/ˈٴ;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lʽⁱ/ᴵᵔ;

    invoke-direct {v4, v2}, Lʽⁱ/ᴵᵔ;-><init>(Lʽⁱ/ˈٴ;)V

    iput-object v4, v1, Lⁱי/ʼʼ;->ⁱᴵ:Lʽⁱ/ᴵᵔ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ﹶˎ()Lʽⁱ/ᴵᵔ;

    move-result-object v2

    iget-object v4, v1, Lⁱי/ʼʼ;->ᐧﹶ:Lʽⁱ/ᴵᵔ;

    invoke-virtual {v2, v4}, Lʽⁱ/ᴵᵔ;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v2, v1, Lⁱי/ʼʼ;->ᐧﹶ:Lʽⁱ/ᴵᵔ;

    new-instance v1, Lٴˉ/ﹳٴ;

    const/16 v2, 0x16

    invoke-direct {v1, v2, v0}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    const/16 v0, 0xe

    invoke-virtual {v3, v0, v1}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_1
    new-instance v0, Lٴˉ/ﹳٴ;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p1}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    const/16 p1, 0x1c

    invoke-virtual {v3, p1, v0}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    invoke-virtual {v3}, Lᐧˎ/ˉʿ;->ʽ()V

    return-void
.end method

.method public final ᵔﹳ(ZJ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lיˉ/ⁱˊ;->ᵎᵔ:Lʽⁱ/ٴᵢ;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lיˉ/ⁱˊ;->ˉـ:Z

    iput-boolean p1, p0, Lיˉ/ⁱˊ;->ʿ:Z

    return-void
.end method

.method public final ﾞʻ()Z
    .locals 1

    iget-boolean v0, p0, Lיˉ/ⁱˊ;->ʿ:Z

    return v0
.end method
