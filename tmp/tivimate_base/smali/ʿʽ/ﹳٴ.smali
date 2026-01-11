.class public final Lʿʽ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public ʼˎ:Lʿʽ/ʽ;

.field public ʽ:I

.field public ˆʾ:Lʻˆ/ʼᐧ;

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:Lˉʽ/ﹳٴ;

.field public ᵔᵢ:Lˊﾞ/ʼᐧ;

.field public ⁱˊ:Lˊﾞ/ᵔﹳ;

.field public final ﹳٴ:Lᐧˎ/ﹳᐧ;

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lᐧˎ/ﹳᐧ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lʿʽ/ﹳٴ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lʿʽ/ﹳٴ;->ﾞᴵ:J

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 0

    iput-object p1, p0, Lʿʽ/ﹳٴ;->ⁱˊ:Lˊﾞ/ᵔﹳ;

    return-void
.end method

.method public final ʽ()V
    .locals 4

    iget-object v0, p0, Lʿʽ/ﹳٴ;->ⁱˊ:Lˊﾞ/ᵔﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    iget-object v0, p0, Lʿʽ/ﹳٴ;->ⁱˊ:Lˊﾞ/ᵔﹳ;

    new-instance v1, Lˊﾞ/יـ;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lˊﾞ/יـ;-><init>(J)V

    invoke-interface {v0, v1}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    const/4 v0, 0x6

    iput v0, p0, Lʿʽ/ﹳٴ;->ʽ:I

    return-void
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 25

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lʿʽ/ﹳٴ;->ʽ:I

    const-wide/16 v4, -0x1

    iget-object v6, v0, Lʿʽ/ﹳٴ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_17

    if-eq v3, v9, :cond_16

    if-eq v3, v8, :cond_a

    const/4 v4, 0x5

    if-eq v3, v7, :cond_5

    if-eq v3, v4, :cond_1

    const/4 v1, 0x6

    if-ne v3, v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    iget-object v3, v0, Lʿʽ/ﹳٴ;->ʼˎ:Lʿʽ/ʽ;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lʿʽ/ﹳٴ;->ᵔᵢ:Lˊﾞ/ʼᐧ;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Lʿʽ/ﹳٴ;->ᵔᵢ:Lˊﾞ/ʼᐧ;

    new-instance v3, Lʿʽ/ʽ;

    iget-wide v4, v0, Lʿʽ/ﹳٴ;->ﾞᴵ:J

    invoke-direct {v3, v1, v4, v5}, Lʿʽ/ʽ;-><init>(Lˊﾞ/ʼᐧ;J)V

    iput-object v3, v0, Lʿʽ/ﹳٴ;->ʼˎ:Lʿʽ/ʽ;

    :cond_3
    iget-object v1, v0, Lʿʽ/ﹳٴ;->ˆʾ:Lʻˆ/ʼᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lʿʽ/ﹳٴ;->ʼˎ:Lʿʽ/ʽ;

    invoke-virtual {v1, v3, v2}, Lʻˆ/ʼᐧ;->ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result v1

    if-ne v1, v9, :cond_4

    iget-wide v3, v2, Lʽⁱ/ˏי;->ﹳٴ:J

    iget-wide v5, v0, Lʿʽ/ﹳٴ;->ﾞᴵ:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lʽⁱ/ˏי;->ﹳٴ:J

    :cond_4
    return v1

    :cond_5
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v11

    iget-wide v13, v0, Lʿʽ/ﹳٴ;->ﾞᴵ:J

    cmp-long v3, v11, v13

    if-eqz v3, :cond_6

    iput-wide v13, v2, Lʽⁱ/ˏי;->ﹳٴ:J

    return v9

    :cond_6
    iget-object v2, v6, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v2, v10, v9, v9}, Lˊﾞ/ʼᐧ;->ʻٴ([BIIZ)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lʿʽ/ﹳٴ;->ʽ()V

    return v10

    :cond_7
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    iget-object v2, v0, Lʿʽ/ﹳٴ;->ˆʾ:Lʻˆ/ʼᐧ;

    if-nez v2, :cond_8

    new-instance v2, Lʻˆ/ʼᐧ;

    sget-object v3, Lʽᐧ/ˆʾ;->ﾞʻ:Lـˎ/ˈ;

    const/16 v5, 0x8

    invoke-direct {v2, v3, v5}, Lʻˆ/ʼᐧ;-><init>(Lʽᐧ/ˆʾ;I)V

    iput-object v2, v0, Lʿʽ/ﹳٴ;->ˆʾ:Lʻˆ/ʼᐧ;

    :cond_8
    new-instance v2, Lʿʽ/ʽ;

    iget-wide v5, v0, Lʿʽ/ﹳٴ;->ﾞᴵ:J

    invoke-direct {v2, v1, v5, v6}, Lʿʽ/ʽ;-><init>(Lˊﾞ/ʼᐧ;J)V

    iput-object v2, v0, Lʿʽ/ﹳٴ;->ʼˎ:Lʿʽ/ʽ;

    iget-object v1, v0, Lʿʽ/ﹳٴ;->ˆʾ:Lʻˆ/ʼᐧ;

    invoke-virtual {v1, v2}, Lʻˆ/ʼᐧ;->ﾞᴵ(Lˊﾞ/ʼᐧ;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lʿʽ/ﹳٴ;->ˆʾ:Lʻˆ/ʼᐧ;

    new-instance v2, Lʿʽ/ʽ;

    iget-wide v5, v0, Lʿʽ/ﹳٴ;->ﾞᴵ:J

    iget-object v3, v0, Lʿʽ/ﹳٴ;->ⁱˊ:Lˊﾞ/ᵔﹳ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v5, v6, v3, v8}, Lʿʽ/ʽ;-><init>(JLjava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lʻˆ/ʼᐧ;->ʼˎ(Lˊﾞ/ᵔﹳ;)V

    iget-object v1, v0, Lʿʽ/ﹳٴ;->ᵎﹶ:Lˉʽ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lʿʽ/ﹳٴ;->ⁱˊ:Lˊﾞ/ᵔﹳ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {v2, v3, v7}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v2

    new-instance v3, Lʽⁱ/ᵔﹳ;

    invoke-direct {v3}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v5, "image/jpeg"

    invoke-static {v5}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    new-instance v5, Lʽⁱ/ٴᵢ;

    new-array v6, v9, [Lʽⁱ/ˊʻ;

    aput-object v1, v6, v10

    invoke-direct {v5, v6}, Lʽⁱ/ٴᵢ;-><init>([Lʽⁱ/ˊʻ;)V

    iput-object v5, v3, Lʽⁱ/ᵔﹳ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    invoke-static {v3, v2}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    iput v4, v0, Lʿʽ/ﹳٴ;->ʽ:I

    return v10

    :cond_9
    invoke-virtual {v0}, Lʿʽ/ﹳٴ;->ʽ()V

    return v10

    :cond_a
    iget v2, v0, Lʿʽ/ﹳٴ;->ˈ:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_14

    new-instance v2, Lᐧˎ/ﹳᐧ;

    iget v3, v0, Lʿʽ/ﹳٴ;->ˑﹳ:I

    invoke-direct {v2, v3}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v6, v0, Lʿʽ/ﹳٴ;->ˑﹳ:I

    invoke-interface {v1, v3, v10, v6}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    iget-object v3, v0, Lʿʽ/ﹳٴ;->ᵎﹶ:Lˉʽ/ﹳٴ;

    if-nez v3, :cond_15

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ˏי()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ˏי()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-nez v1, :cond_c

    :cond_b
    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_c
    :try_start_0
    invoke-static {v2}, Lʿʽ/ˑﹳ;->ﹳٴ(Ljava/lang/String;)Lʿʽ/ʽ;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "MotionPhotoXmpParser"

    const-string v2, "Ignoring unexpected XMP metadata"

    invoke-static {v1, v2}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    iget-object v2, v1, Lʿʽ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lʼʻ/ʿᵢ;

    iget v11, v2, Lʼʻ/ʿᵢ;->ˈٴ:I

    if-ge v11, v8, :cond_e

    goto :goto_0

    :cond_e
    sub-int/2addr v11, v9

    move-wide v13, v4

    move-wide v15, v13

    move-wide/from16 v19, v15

    move-wide/from16 v21, v19

    move v8, v10

    :goto_2
    if-ltz v11, :cond_12

    invoke-virtual {v2, v11}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lʿʽ/ⁱˊ;

    const-string v12, "video/mp4"

    iget-object v3, v9, Lʿʽ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v8

    if-nez v11, :cond_f

    iget-wide v8, v9, Lʿʽ/ⁱˊ;->ʽ:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    :goto_3
    move-wide/from16 v23, v8

    move-wide v8, v6

    move-wide/from16 v6, v23

    goto :goto_4

    :cond_f
    iget-wide v8, v9, Lʿʽ/ⁱˊ;->ⁱˊ:J

    sub-long v8, v6, v8

    goto :goto_3

    :goto_4
    if-eqz v3, :cond_10

    cmp-long v12, v6, v8

    if-eqz v12, :cond_10

    sub-long v21, v8, v6

    move-wide/from16 v19, v6

    move v3, v10

    :cond_10
    if-nez v11, :cond_11

    move-wide v13, v6

    move-wide v15, v8

    :cond_11
    add-int/lit8 v11, v11, -0x1

    move v8, v3

    goto :goto_2

    :cond_12
    cmp-long v2, v19, v4

    if-eqz v2, :cond_b

    cmp-long v2, v21, v4

    if-eqz v2, :cond_b

    cmp-long v2, v13, v4

    if-eqz v2, :cond_b

    cmp-long v2, v15, v4

    if-nez v2, :cond_13

    goto :goto_0

    :cond_13
    new-instance v12, Lˉʽ/ﹳٴ;

    iget-wide v1, v1, Lʿʽ/ʽ;->ᴵˊ:J

    move-wide/from16 v17, v1

    invoke-direct/range {v12 .. v22}, Lˉʽ/ﹳٴ;-><init>(JJJJJ)V

    move-object v3, v12

    :goto_5
    iput-object v3, v0, Lʿʽ/ﹳٴ;->ᵎﹶ:Lˉʽ/ﹳٴ;

    if-eqz v3, :cond_15

    iget-wide v1, v3, Lˉʽ/ﹳٴ;->ˈ:J

    iput-wide v1, v0, Lʿʽ/ﹳٴ;->ﾞᴵ:J

    goto :goto_6

    :cond_14
    iget v2, v0, Lʿʽ/ﹳٴ;->ˑﹳ:I

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    :cond_15
    :goto_6
    iput v10, v0, Lʿʽ/ﹳٴ;->ʽ:I

    return v10

    :cond_16
    invoke-virtual {v6, v8}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v2, v6, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v2, v10, v8}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    invoke-virtual {v6}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v1

    sub-int/2addr v1, v8

    iput v1, v0, Lʿʽ/ﹳٴ;->ˑﹳ:I

    iput v8, v0, Lʿʽ/ﹳٴ;->ʽ:I

    return v10

    :cond_17
    invoke-virtual {v6, v8}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v2, v6, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v2, v10, v8}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    invoke-virtual {v6}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v1

    iput v1, v0, Lʿʽ/ﹳٴ;->ˈ:I

    const v2, 0xffda

    if-ne v1, v2, :cond_19

    iget-wide v1, v0, Lʿʽ/ﹳٴ;->ﾞᴵ:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_18

    iput v7, v0, Lʿʽ/ﹳٴ;->ʽ:I

    return v10

    :cond_18
    invoke-virtual {v0}, Lʿʽ/ﹳٴ;->ʽ()V

    return v10

    :cond_19
    const v2, 0xffd0

    if-lt v1, v2, :cond_1a

    const v2, 0xffd9

    if-le v1, v2, :cond_1b

    :cond_1a
    const v2, 0xff01

    if-eq v1, v2, :cond_1b

    iput v9, v0, Lʿʽ/ﹳٴ;->ʽ:I

    :cond_1b
    return v10
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lʿʽ/ﹳٴ;->ʽ:I

    const/4 p1, 0x0

    iput-object p1, p0, Lʿʽ/ﹳٴ;->ˆʾ:Lʻˆ/ʼᐧ;

    return-void

    :cond_0
    iget v0, p0, Lʿʽ/ﹳٴ;->ʽ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lʿʽ/ﹳٴ;->ˆʾ:Lʻˆ/ʼᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3, p4}, Lʻˆ/ʼᐧ;->ⁱˊ(JJ)V

    :cond_1
    return-void
.end method

.method public final ﹳٴ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lʿʽ/ﹳٴ;->ˆʾ:Lʻˆ/ʼᐧ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 5

    .prologue
    check-cast p1, Lˊﾞ/ﾞʻ;

    iget-object v0, p0, Lʿʽ/ﹳٴ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v2, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1, v3}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v2

    const v4, 0xffd8

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v2, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1, v2, v3, v1, v3}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v2

    iput v2, p0, Lʿʽ/ﹳٴ;->ˈ:I

    const v4, 0xffe0

    if-ne v2, v4, :cond_1

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v2, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1, v2, v3, v1, v3}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2, v3}, Lˊﾞ/ﾞʻ;->ﹳٴ(IZ)Z

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v2, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1, v2, v3, v1, v3}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result p1

    iput p1, p0, Lʿʽ/ﹳٴ;->ˈ:I

    :cond_1
    iget p1, p0, Lʿʽ/ﹳٴ;->ˈ:I

    const v0, 0xffe1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v3
.end method
