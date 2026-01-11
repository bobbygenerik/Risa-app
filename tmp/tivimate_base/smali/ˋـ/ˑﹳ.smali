.class public final Lˋـ/ˑﹳ;
.super Lⁱי/ˑﹳ;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public ʻˋ:Z

.field public final ʻᵎ:Lـʾ/ᵔﹳ;

.field public final ʼˈ:Lᵎˉ/ⁱˊ;

.field public ʿ:Lʽᐧ/ˑﹳ;

.field public ʿᵢ:Lʽᐧ/ᵔᵢ;

.field public ˈˏ:Lʽⁱ/ﹳᐧ;

.field public final ˈⁱ:Lˋـ/ˈ;

.field public ˉـ:I

.field public ˊᵔ:Z

.field public final ˏᵢ:Landroid/os/Handler;

.field public final ـˏ:Lﹳⁱ/ˑﹳ;

.field public ـﹶ:Z

.field public ᐧᴵ:I

.field public ᐧﾞ:Lʽᐧ/ʼˎ;

.field public final ᴵʼ:Lⁱי/ʻٴ;

.field public ᴵˑ:Z

.field public ᵎᵔ:Lʽᐧ/ʼˎ;

.field public ﹳـ:Lˋـ/ﹳٴ;

.field public ﹳﹳ:J

.field public ﹶᐧ:J


# direct methods
.method public constructor <init>(Lⁱי/ʻٴ;Landroid/os/Looper;)V
    .locals 2

    .prologue
    sget-object v0, Lˋـ/ˈ;->ˉˆ:Lˉˆ/ʿ;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lⁱי/ˑﹳ;-><init>(I)V

    iput-object p1, p0, Lˋـ/ˑﹳ;->ᴵʼ:Lⁱי/ʻٴ;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Lˋـ/ˑﹳ;->ˏᵢ:Landroid/os/Handler;

    iput-object v0, p0, Lˋـ/ˑﹳ;->ˈⁱ:Lˋـ/ˈ;

    new-instance p1, Lᵎˉ/ⁱˊ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋـ/ˑﹳ;->ʼˈ:Lᵎˉ/ⁱˊ;

    new-instance p1, Lﹳⁱ/ˑﹳ;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lﹳⁱ/ˑﹳ;-><init>(II)V

    iput-object p1, p0, Lˋـ/ˑﹳ;->ـˏ:Lﹳⁱ/ˑﹳ;

    new-instance p1, Lـʾ/ᵔﹳ;

    const/16 p2, 0xe

    invoke-direct {p1, p2}, Lـʾ/ᵔﹳ;-><init>(I)V

    iput-object p1, p0, Lˋـ/ˑﹳ;->ʻᵎ:Lـʾ/ᵔﹳ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lˋـ/ˑﹳ;->ﹳﹳ:J

    iput-wide p1, p0, Lˋـ/ˑﹳ;->ﹶᐧ:J

    iput-boolean v0, p0, Lˋـ/ˑﹳ;->ʻˋ:Z

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

    check-cast p1, Lⁱˉ/ʽ;

    invoke-virtual {p0, p1}, Lˋـ/ˑﹳ;->ٴᵢ(Lⁱˉ/ʽ;)V

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final ʻٴ([Lʽⁱ/ﹳᐧ;JJLﹳᵢ/ᵢˏ;)V
    .locals 0

    .prologue
    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string p2, "application/x-media3-cues"

    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lˋـ/ˑﹳ;->ʽʽ()V

    iget-object p1, p0, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    if-eqz p1, :cond_0

    iput p2, p0, Lˋـ/ˑﹳ;->ˉـ:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lˋـ/ˑﹳ;->ˊʻ()V

    return-void

    :cond_1
    iget-object p1, p0, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    iget p1, p1, Lʽⁱ/ﹳᐧ;->ᵔי:I

    if-ne p1, p2, :cond_2

    new-instance p1, Lˋـ/ʽ;

    invoke-direct {p1}, Lˋـ/ʽ;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Lʼٴ/ʼˎ;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lʼٴ/ʼˎ;-><init>(I)V

    :goto_0
    iput-object p1, p0, Lˋـ/ˑﹳ;->ﹳـ:Lˋـ/ﹳٴ;

    return-void
.end method

.method public final ʽʽ()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˋـ/ˑﹳ;->ʻˋ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v1, "application/cea-608"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v1, "application/x-mp4-cea-608"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v1, "application/cea-708"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Legacy decoding is disabled, can\'t handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    iget-object v2, v2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " samples (expected application/x-media3-cues)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lᐧˎ/ﹳٴ;->ˆʾ(Ljava/lang/String;Z)V

    return-void
.end method

.method public final ʾˋ(Lʽⁱ/ﹳᐧ;)I
    .locals 3

    .prologue
    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v1, "application/x-media3-cues"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lˋـ/ˑﹳ;->ˈⁱ:Lˋـ/ˈ;

    check-cast v0, Lˉˆ/ʿ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˋⁱ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lˋⁱ/ﾞᴵ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/cea-608"

    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/x-mp4-cea-608"

    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/cea-708"

    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lʽⁱ/ˉٴ;->ᵔʾ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1, v2, v2, v2}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p1

    return p1

    :cond_1
    invoke-static {v2, v2, v2, v2}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    iget p1, p1, Lʽⁱ/ﹳᐧ;->ˈʿ:I

    if-nez p1, :cond_3

    const/4 p1, 0x4

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    :goto_1
    invoke-static {p1, v2, v2, v2}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p1

    return p1
.end method

.method public final ʾᵎ(JJ)V
    .locals 18

    .prologue
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-boolean v0, v1, Lⁱי/ˑﹳ;->ᵔٴ:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-wide v5, v1, Lˋـ/ˑﹳ;->ﹳﹳ:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ˉٴ()V

    iput-boolean v4, v1, Lˋـ/ˑﹳ;->ـﹶ:Z

    :cond_0
    iget-boolean v0, v1, Lˋـ/ˑﹳ;->ـﹶ:Z

    if-eqz v0, :cond_1

    goto/16 :goto_10

    :cond_1
    iget-object v0, v1, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v5, "application/x-media3-cues"

    invoke-static {v0, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v5, v1, Lˋـ/ˑﹳ;->ˏᵢ:Landroid/os/Handler;

    const/4 v6, 0x4

    const/4 v7, -0x4

    iget-object v8, v1, Lˋـ/ˑﹳ;->ʻᵎ:Lـʾ/ᵔﹳ;

    const/4 v9, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lˋـ/ˑﹳ;->ﹳـ:Lˋـ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v1, Lˋـ/ˑﹳ;->ˊᵔ:Z

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, v1, Lˋـ/ˑﹳ;->ـˏ:Lﹳⁱ/ˑﹳ;

    invoke-virtual {v1, v8, v0, v9}, Lⁱי/ˑﹳ;->ـˆ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I

    move-result v8

    if-eq v8, v7, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-boolean v4, v1, Lˋـ/ˑﹳ;->ˊᵔ:Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lﹳⁱ/ˑﹳ;->ـˆ()V

    iget-object v6, v0, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v11, v0, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v6

    iget-object v10, v1, Lˋـ/ˑﹳ;->ʼˈ:Lᵎˉ/ⁱˊ;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-virtual {v10, v7, v8, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v10, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v6, Landroid/os/Bundle;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    const-string v7, "c"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lʽᐧ/ﹳٴ;

    new-instance v8, Lʻʿ/ᵔﹳ;

    const/16 v13, 0x18

    invoke-direct {v8, v13}, Lʻʿ/ᵔﹳ;-><init>(I)V

    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v13

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_5

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v14}, Lʻʿ/ᵔﹳ;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v13}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object v15

    const-string v7, "d"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-direct/range {v10 .. v15}, Lʽᐧ/ﹳٴ;-><init>(JJLjava/util/List;)V

    invoke-virtual {v0}, Lﹳⁱ/ˑﹳ;->ˏי()V

    iget-object v0, v1, Lˋـ/ˑﹳ;->ﹳـ:Lˋـ/ﹳٴ;

    invoke-interface {v0, v10, v2, v3}, Lˋـ/ﹳٴ;->ˈ(Lʽᐧ/ﹳٴ;J)Z

    move-result v9

    :goto_1
    iget-object v0, v1, Lˋـ/ˑﹳ;->ﹳـ:Lˋـ/ﹳٴ;

    iget-wide v6, v1, Lˋـ/ˑﹳ;->ﹶᐧ:J

    invoke-interface {v0, v6, v7}, Lˋـ/ﹳٴ;->ⁱˊ(J)J

    move-result-wide v6

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v0, v6, v10

    if-nez v0, :cond_6

    iget-boolean v8, v1, Lˋـ/ˑﹳ;->ˊᵔ:Z

    if-eqz v8, :cond_6

    if-nez v9, :cond_6

    iput-boolean v4, v1, Lˋـ/ˑﹳ;->ـﹶ:Z

    :cond_6
    if-eqz v0, :cond_7

    cmp-long v0, v6, v2

    if-gtz v0, :cond_7

    move v9, v4

    :cond_7
    if-eqz v9, :cond_9

    iget-object v0, v1, Lˋـ/ˑﹳ;->ﹳـ:Lˋـ/ﹳٴ;

    invoke-interface {v0, v2, v3}, Lˋـ/ﹳٴ;->ﹳٴ(J)Lʼʻ/ᵎⁱ;

    move-result-object v0

    iget-object v6, v1, Lˋـ/ˑﹳ;->ﹳـ:Lˋـ/ﹳٴ;

    invoke-interface {v6, v2, v3}, Lˋـ/ﹳٴ;->ʽ(J)J

    move-result-wide v6

    new-instance v8, Lⁱˉ/ʽ;

    invoke-virtual {v1, v6, v7}, Lˋـ/ˑﹳ;->ᴵᵔ(J)J

    invoke-direct {v8, v0}, Lⁱˉ/ʽ;-><init>(Ljava/util/List;)V

    if-eqz v5, :cond_8

    invoke-virtual {v5, v4, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v8}, Lˋـ/ˑﹳ;->ٴᵢ(Lⁱˉ/ʽ;)V

    :goto_2
    iget-object v0, v1, Lˋـ/ˑﹳ;->ﹳـ:Lˋـ/ﹳٴ;

    invoke-interface {v0, v6, v7}, Lˋـ/ﹳٴ;->ˑﹳ(J)V

    :cond_9
    iput-wide v2, v1, Lˋـ/ˑﹳ;->ﹶᐧ:J

    return-void

    :cond_a
    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ʽʽ()V

    iput-wide v2, v1, Lˋـ/ˑﹳ;->ﹶᐧ:J

    iget-object v0, v1, Lˋـ/ˑﹳ;->ᐧﾞ:Lʽᐧ/ʼˎ;

    const-string v10, "Subtitle decoding failed. streamFormat="

    const-string v11, "TextRenderer"

    const/4 v12, 0x0

    if-nez v0, :cond_c

    iget-object v0, v1, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2, v3}, Lʽᐧ/ˑﹳ;->ˈ(J)V

    :try_start_0
    iget-object v0, v1, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lﹳⁱ/ˈ;->ˑﹳ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽᐧ/ʼˎ;

    iput-object v0, v1, Lˋـ/ˑﹳ;->ᐧﾞ:Lʽᐧ/ʼˎ;
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lⁱˉ/ʽ;

    sget-object v2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    iget-wide v6, v1, Lˋـ/ˑﹳ;->ﹶᐧ:J

    invoke-virtual {v1, v6, v7}, Lˋـ/ˑﹳ;->ᴵᵔ(J)J

    invoke-direct {v0, v2}, Lⁱˉ/ʽ;-><init>(Ljava/util/List;)V

    if-eqz v5, :cond_b

    invoke-virtual {v5, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_b
    invoke-virtual {v1, v0}, Lˋـ/ˑﹳ;->ٴᵢ(Lⁱˉ/ʽ;)V

    :goto_3
    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ˉٴ()V

    iget-object v0, v1, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lﹳⁱ/ˈ;->ﹳٴ()V

    iput-object v12, v1, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    iput v9, v1, Lˋـ/ˑﹳ;->ˉـ:I

    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ˊʻ()V

    goto/16 :goto_10

    :cond_c
    :goto_4
    iget v0, v1, Lⁱי/ˑﹳ;->ˉٴ:I

    const/4 v13, 0x2

    if-eq v0, v13, :cond_d

    goto/16 :goto_10

    :cond_d
    iget-object v0, v1, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ˈٴ()J

    move-result-wide v14

    move v0, v9

    :goto_5
    cmp-long v14, v14, v2

    if-gtz v14, :cond_f

    iget v0, v1, Lˋـ/ˑﹳ;->ᐧᴵ:I

    add-int/2addr v0, v4

    iput v0, v1, Lˋـ/ˑﹳ;->ᐧᴵ:I

    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ˈٴ()J

    move-result-wide v14

    move v0, v4

    goto :goto_5

    :cond_e
    move v0, v9

    :cond_f
    iget-object v14, v1, Lˋـ/ˑﹳ;->ᐧﾞ:Lʽᐧ/ʼˎ;

    if-eqz v14, :cond_10

    invoke-virtual {v14, v6}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v15

    if-eqz v15, :cond_12

    if-nez v0, :cond_10

    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ˈٴ()J

    move-result-wide v14

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v14, v14, v16

    if-nez v14, :cond_10

    iget v14, v1, Lˋـ/ˑﹳ;->ˉـ:I

    if-ne v14, v13, :cond_11

    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ˉٴ()V

    iget-object v14, v1, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v14}, Lﹳⁱ/ˈ;->ﹳٴ()V

    iput-object v12, v1, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    iput v9, v1, Lˋـ/ˑﹳ;->ˉـ:I

    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ˊʻ()V

    :cond_10
    :goto_6
    move-object v15, v8

    goto :goto_7

    :cond_11
    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ˉٴ()V

    iput-boolean v4, v1, Lˋـ/ˑﹳ;->ـﹶ:Z

    goto :goto_6

    :cond_12
    move-object v15, v8

    iget-wide v7, v14, Lﹳⁱ/ﾞᴵ;->ʽʽ:J

    cmp-long v7, v7, v2

    if-gtz v7, :cond_14

    iget-object v0, v1, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lﹳⁱ/ﾞᴵ;->ʽﹳ()V

    :cond_13
    invoke-virtual {v14, v2, v3}, Lʽᐧ/ʼˎ;->ﹳٴ(J)I

    move-result v0

    iput v0, v1, Lˋـ/ˑﹳ;->ᐧᴵ:I

    iput-object v14, v1, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    iput-object v12, v1, Lˋـ/ˑﹳ;->ᐧﾞ:Lʽᐧ/ʼˎ;

    move v0, v4

    :cond_14
    :goto_7
    if-eqz v0, :cond_19

    iget-object v0, v1, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    invoke-virtual {v0, v2, v3}, Lʽᐧ/ʼˎ;->ﹳٴ(J)I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v7, v1, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    invoke-virtual {v7}, Lʽᐧ/ʼˎ;->ᵔʾ()I

    move-result v7

    if-nez v7, :cond_15

    goto :goto_8

    :cond_15
    const/4 v7, -0x1

    if-ne v0, v7, :cond_16

    iget-object v0, v1, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    invoke-virtual {v0}, Lʽᐧ/ʼˎ;->ᵔʾ()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v0, v7}, Lʽᐧ/ʼˎ;->ﾞᴵ(I)J

    move-result-wide v7

    goto :goto_9

    :cond_16
    iget-object v7, v1, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    sub-int/2addr v0, v4

    invoke-virtual {v7, v0}, Lʽᐧ/ʼˎ;->ﾞᴵ(I)J

    move-result-wide v7

    goto :goto_9

    :cond_17
    :goto_8
    iget-object v0, v1, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    iget-wide v7, v0, Lﹳⁱ/ﾞᴵ;->ʽʽ:J

    :goto_9
    invoke-virtual {v1, v7, v8}, Lˋـ/ˑﹳ;->ᴵᵔ(J)J

    new-instance v0, Lⁱˉ/ʽ;

    iget-object v7, v1, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    invoke-virtual {v7, v2, v3}, Lʽᐧ/ʼˎ;->ﾞʻ(J)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lⁱˉ/ʽ;-><init>(Ljava/util/List;)V

    if-eqz v5, :cond_18

    invoke-virtual {v5, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    :cond_18
    invoke-virtual {v1, v0}, Lˋـ/ˑﹳ;->ٴᵢ(Lⁱˉ/ʽ;)V

    :cond_19
    :goto_a
    iget v0, v1, Lˋـ/ˑﹳ;->ˉـ:I

    if-ne v0, v13, :cond_1a

    goto/16 :goto_10

    :cond_1a
    :goto_b
    :try_start_1
    iget-boolean v0, v1, Lˋـ/ˑﹳ;->ˊᵔ:Z

    if-nez v0, :cond_22

    iget-object v0, v1, Lˋـ/ˑﹳ;->ʿᵢ:Lʽᐧ/ᵔᵢ;

    if-nez v0, :cond_1c

    iget-object v0, v1, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lﹳⁱ/ˈ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽᐧ/ᵔᵢ;

    if-nez v0, :cond_1b

    goto/16 :goto_10

    :cond_1b
    iput-object v0, v1, Lˋـ/ˑﹳ;->ʿᵢ:Lʽᐧ/ᵔᵢ;

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_e

    :cond_1c
    :goto_c
    iget v2, v1, Lˋـ/ˑﹳ;->ˉـ:I

    if-ne v2, v4, :cond_1d

    iput v6, v0, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    iget-object v2, v1, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Lﹳⁱ/ˈ;->ⁱˊ(Lʽᐧ/ᵔᵢ;)V

    iput-object v12, v1, Lˋـ/ˑﹳ;->ʿᵢ:Lʽᐧ/ᵔᵢ;

    iput v13, v1, Lˋـ/ˑﹳ;->ˉـ:I

    return-void

    :cond_1d
    invoke-virtual {v1, v15, v0, v9}, Lⁱי/ˑﹳ;->ـˆ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_20

    invoke-virtual {v0, v6}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    iput-boolean v4, v1, Lˋـ/ˑﹳ;->ˊᵔ:Z

    iput-boolean v9, v1, Lˋـ/ˑﹳ;->ᴵˑ:Z

    goto :goto_d

    :cond_1e
    iget-object v2, v15, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lʽⁱ/ﹳᐧ;

    if-nez v2, :cond_1f

    goto :goto_10

    :cond_1f
    iget-wide v7, v2, Lʽⁱ/ﹳᐧ;->יـ:J

    iput-wide v7, v0, Lʽᐧ/ᵔᵢ;->ᵎˊ:J

    invoke-virtual {v0}, Lﹳⁱ/ˑﹳ;->ـˆ()V

    iget-boolean v2, v1, Lˋـ/ˑﹳ;->ᴵˑ:Z

    invoke-virtual {v0, v4}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v7

    xor-int/2addr v7, v4

    and-int/2addr v2, v7

    iput-boolean v2, v1, Lˋـ/ˑﹳ;->ᴵˑ:Z

    :goto_d
    iget-boolean v2, v1, Lˋـ/ˑﹳ;->ᴵˑ:Z

    if-nez v2, :cond_1a

    iget-object v2, v1, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Lﹳⁱ/ˈ;->ⁱˊ(Lʽᐧ/ᵔᵢ;)V

    iput-object v12, v1, Lˋـ/ˑﹳ;->ʿᵢ:Lʽᐧ/ᵔᵢ;
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :cond_20
    const/4 v0, -0x3

    if-ne v2, v0, :cond_1a

    goto :goto_10

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lⁱˉ/ʽ;

    sget-object v2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    iget-wide v6, v1, Lˋـ/ˑﹳ;->ﹶᐧ:J

    invoke-virtual {v1, v6, v7}, Lˋـ/ˑﹳ;->ᴵᵔ(J)J

    invoke-direct {v0, v2}, Lⁱˉ/ʽ;-><init>(Ljava/util/List;)V

    if-eqz v5, :cond_21

    invoke-virtual {v5, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_f

    :cond_21
    invoke-virtual {v1, v0}, Lˋـ/ˑﹳ;->ٴᵢ(Lⁱˉ/ʽ;)V

    :goto_f
    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ˉٴ()V

    iget-object v0, v1, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lﹳⁱ/ˈ;->ﹳٴ()V

    iput-object v12, v1, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    iput v9, v1, Lˋـ/ˑﹳ;->ˉـ:I

    invoke-virtual {v1}, Lˋـ/ˑﹳ;->ˊʻ()V

    :cond_22
    :goto_10
    return-void
.end method

.method public final ˆʾ()Ljava/lang/String;
    .locals 1

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public final ˈٴ()J
    .locals 4

    .prologue
    iget v0, p0, Lˋـ/ˑﹳ;->ᐧᴵ:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lˋـ/ˑﹳ;->ᐧᴵ:I

    iget-object v1, p0, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    invoke-virtual {v1}, Lʽᐧ/ʼˎ;->ᵔʾ()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-wide v2

    :cond_1
    iget-object v0, p0, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    iget v1, p0, Lˋـ/ˑﹳ;->ᐧᴵ:I

    invoke-virtual {v0, v1}, Lʽᐧ/ʼˎ;->ﾞᴵ(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ˉʿ()Z
    .locals 6

    .prologue
    iget-object v0, p0, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v2, "application/x-media3-cues"

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˋـ/ˑﹳ;->ﹳـ:Lˋـ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, p0, Lˋـ/ˑﹳ;->ﹶᐧ:J

    invoke-interface {v0, v2, v3}, Lˋـ/ﹳٴ;->ⁱˊ(J)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lⁱי/ˑﹳ;->ᵎⁱ:Lﹳᵢ/ˉـ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lﹳᵢ/ˉـ;->ʽ()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    iget-boolean v0, p0, Lˋـ/ˑﹳ;->ـﹶ:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lˋـ/ˑﹳ;->ˊᵔ:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    iget-wide v2, p0, Lˋـ/ˑﹳ;->ﹶᐧ:J

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lʽᐧ/ʼˎ;->ᵔʾ()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Lʽᐧ/ʼˎ;->ᵔʾ()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lʽᐧ/ʼˎ;->ﾞᴵ(I)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lˋـ/ˑﹳ;->ᐧﾞ:Lʽᐧ/ʼˎ;

    iget-wide v2, p0, Lˋـ/ˑﹳ;->ﹶᐧ:J

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lʽᐧ/ʼˎ;->ᵔʾ()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v0}, Lʽᐧ/ʼˎ;->ᵔʾ()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lʽᐧ/ʼˎ;->ﾞᴵ(I)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lˋـ/ˑﹳ;->ʿᵢ:Lʽᐧ/ᵔᵢ;

    if-nez v0, :cond_6

    :cond_5
    :goto_0
    return v1

    :catch_0
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final ˉˆ()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lˋـ/ˑﹳ;->ﹳﹳ:J

    new-instance v3, Lⁱˉ/ʽ;

    sget-object v4, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    iget-wide v5, p0, Lˋـ/ˑﹳ;->ﹶᐧ:J

    invoke-virtual {p0, v5, v6}, Lˋـ/ˑﹳ;->ᴵᵔ(J)J

    invoke-direct {v3, v4}, Lⁱˉ/ʽ;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Lˋـ/ˑﹳ;->ˏᵢ:Landroid/os/Handler;

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lˋـ/ˑﹳ;->ٴᵢ(Lⁱˉ/ʽ;)V

    :goto_0
    iput-wide v1, p0, Lˋـ/ˑﹳ;->ﹶᐧ:J

    iget-object v1, p0, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lˋـ/ˑﹳ;->ˉٴ()V

    iget-object v1, p0, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lﹳⁱ/ˈ;->ﹳٴ()V

    iput-object v0, p0, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    const/4 v0, 0x0

    iput v0, p0, Lˋـ/ˑﹳ;->ˉـ:I

    :cond_1
    return-void
.end method

.method public final ˉٴ()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lˋـ/ˑﹳ;->ʿᵢ:Lʽᐧ/ᵔᵢ;

    const/4 v1, -0x1

    iput v1, p0, Lˋـ/ˑﹳ;->ᐧᴵ:I

    iget-object v1, p0, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lﹳⁱ/ﾞᴵ;->ʽﹳ()V

    iput-object v0, p0, Lˋـ/ˑﹳ;->ᵎᵔ:Lʽᐧ/ʼˎ;

    :cond_0
    iget-object v1, p0, Lˋـ/ˑﹳ;->ᐧﾞ:Lʽᐧ/ʼˎ;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lﹳⁱ/ﾞᴵ;->ʽﹳ()V

    iput-object v0, p0, Lˋـ/ˑﹳ;->ᐧﾞ:Lʽᐧ/ʼˎ;

    :cond_1
    return-void
.end method

.method public final ˊʻ()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˋـ/ˑﹳ;->ᴵˑ:Z

    iget-object v1, p0, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lˋـ/ˑﹳ;->ˈⁱ:Lˋـ/ˈ;

    check-cast v2, Lˉˆ/ʿ;

    iget-object v2, v2, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˋⁱ/ﾞᴵ;

    iget-object v3, v1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget v4, v1, Lʽⁱ/ﹳᐧ;->ᵎˊ:I

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v0, v6

    goto :goto_1

    :sswitch_0
    const-string v0, "application/cea-708"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "application/cea-608"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :sswitch_2
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v0, Lⁱʾ/ﾞᴵ;

    iget-object v1, v1, Lʽⁱ/ﹳᐧ;->ᵔﹳ:Ljava/util/List;

    invoke-direct {v0, v4, v1}, Lⁱʾ/ﾞᴵ;-><init>(ILjava/util/List;)V

    goto :goto_3

    :pswitch_1
    new-instance v0, Lⁱʾ/ʽ;

    invoke-direct {v0, v4, v3}, Lⁱʾ/ʽ;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v2, v1}, Lˋⁱ/ﾞᴵ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v1}, Lˋⁱ/ﾞᴵ;->ﹳᐧ(Lʽⁱ/ﹳᐧ;)Lʽᐧ/ﾞʻ;

    move-result-object v0

    new-instance v1, Lˋـ/ⁱˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Decoder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lˋـ/ⁱˊ;-><init>(Ljava/lang/String;Lʽᐧ/ﾞʻ;)V

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    iget-wide v1, p0, Lⁱי/ˑﹳ;->ᵔי:J

    invoke-interface {v0, v1, v2}, Lﹳⁱ/ˈ;->ʽ(J)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempted to create decoder for unsupported MIME type: "

    invoke-static {v1, v3}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x37713300 -> :sswitch_2
        0x5d578071 -> :sswitch_1
        0x5d578432 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ٴᵢ(Lⁱˉ/ʽ;)V
    .locals 5

    iget-object v0, p1, Lⁱˉ/ʽ;->ﹳٴ:Lʼʻ/ʿᵢ;

    iget-object v1, p0, Lˋـ/ˑﹳ;->ᴵʼ:Lⁱי/ʻٴ;

    iget-object v2, v1, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iget-object v2, v2, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v3, Lٴˉ/ﹳٴ;

    const/16 v4, 0x18

    invoke-direct {v3, v4, v0}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    const/16 v0, 0x1b

    invoke-virtual {v2, v0, v3}, Lᐧˎ/ˉʿ;->ᵎﹶ(ILᐧˎ/ˆʾ;)V

    iget-object v1, v1, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    iput-object p1, v1, Lⁱי/ʼʼ;->ﹳⁱ:Lⁱˉ/ʽ;

    iget-object v1, v1, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v2, Lٴˉ/ﹳٴ;

    const/16 v3, 0x15

    invoke-direct {v2, v3, p1}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lᐧˎ/ˉʿ;->ᵎﹶ(ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ᴵᵔ(J)J
    .locals 2

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-wide v0, p0, Lⁱי/ˑﹳ;->ᵎˊ:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final ᵔﹳ(ZJ)V
    .locals 2

    .prologue
    iput-wide p2, p0, Lˋـ/ˑﹳ;->ﹶᐧ:J

    iget-object p1, p0, Lˋـ/ˑﹳ;->ﹳـ:Lˋـ/ﹳٴ;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lˋـ/ﹳٴ;->clear()V

    :cond_0
    new-instance p1, Lⁱˉ/ʽ;

    sget-object p2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    iget-wide v0, p0, Lˋـ/ˑﹳ;->ﹶᐧ:J

    invoke-virtual {p0, v0, v1}, Lˋـ/ˑﹳ;->ᴵᵔ(J)J

    invoke-direct {p1, p2}, Lⁱˉ/ʽ;-><init>(Ljava/util/List;)V

    iget-object p2, p0, Lˋـ/ˑﹳ;->ˏᵢ:Landroid/os/Handler;

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lˋـ/ˑﹳ;->ٴᵢ(Lⁱˉ/ʽ;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lˋـ/ˑﹳ;->ˊᵔ:Z

    iput-boolean p1, p0, Lˋـ/ˑﹳ;->ـﹶ:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lˋـ/ˑﹳ;->ﹳﹳ:J

    iget-object p2, p0, Lˋـ/ˑﹳ;->ˈˏ:Lʽⁱ/ﹳᐧ;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string p3, "application/x-media3-cues"

    invoke-static {p2, p3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, Lˋـ/ˑﹳ;->ˉـ:I

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lˋـ/ˑﹳ;->ˉٴ()V

    iget-object p2, p0, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lﹳⁱ/ˈ;->ﹳٴ()V

    const/4 p2, 0x0

    iput-object p2, p0, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    iput p1, p0, Lˋـ/ˑﹳ;->ˉـ:I

    invoke-virtual {p0}, Lˋـ/ˑﹳ;->ˊʻ()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lˋـ/ˑﹳ;->ˉٴ()V

    iget-object p1, p0, Lˋـ/ˑﹳ;->ʿ:Lʽᐧ/ˑﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lﹳⁱ/ˈ;->flush()V

    iget-wide p2, p0, Lⁱי/ˑﹳ;->ᵔי:J

    invoke-interface {p1, p2, p3}, Lﹳⁱ/ˈ;->ʽ(J)V

    :cond_3
    return-void
.end method

.method public final ﾞʻ()Z
    .locals 1

    iget-boolean v0, p0, Lˋـ/ˑﹳ;->ـﹶ:Z

    return v0
.end method
