.class public final Lˑᵎ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʾˋ:Lˑʿ/ˏי;

.field public static final ᵢˏ:Ljava/lang/String;


# instance fields
.field public final ʻٴ:I

.field public final ʼʼ:Ljava/lang/Boolean;

.field public ʼˎ:J

.field public final ʼᐧ:J

.field public final ʽ:Ljava/lang/String;

.field public final ʽﹳ:J

.field public ʾᵎ:Ljava/lang/String;

.field public final ˆʾ:Lᴵˋ/ˑﹳ;

.field public final ˈ:Ljava/lang/String;

.field public final ˉʿ:J

.field public final ˉˆ:J

.field public final ˏי:I

.field public ˑﹳ:Lᴵˋ/ᵔᵢ;

.field public final יـ:I

.field public final ـˆ:I

.field public final ٴﹶ:I

.field public ᵎﹶ:J

.field public ᵔʾ:J

.field public ᵔᵢ:J

.field public ᵔﹳ:Z

.field public ⁱˊ:Lᴵˋ/ˈٴ;

.field public final ﹳٴ:Ljava/lang/String;

.field public ﹳᐧ:I

.field public final ﾞʻ:I

.field public final ﾞᴵ:Lᴵˋ/ᵔᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkSpec"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lˑᵎ/ﹳᐧ;->ᵢˏ:Ljava/lang/String;

    new-instance v0, Lˑʿ/ˏי;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lˑʿ/ˏי;-><init>(I)V

    sput-object v0, Lˑᵎ/ﹳᐧ;->ʾˋ:Lˑʿ/ˏי;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Ljava/lang/String;Lᴵˋ/ᵔᵢ;Lᴵˋ/ᵔᵢ;JJJLᴵˋ/ˑﹳ;IIJJJJZIIIJIILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    iput-object p3, p0, Lˑᵎ/ﹳᐧ;->ʽ:Ljava/lang/String;

    iput-object p4, p0, Lˑᵎ/ﹳᐧ;->ˈ:Ljava/lang/String;

    iput-object p5, p0, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    iput-object p6, p0, Lˑᵎ/ﹳᐧ;->ﾞᴵ:Lᴵˋ/ᵔᵢ;

    iput-wide p7, p0, Lˑᵎ/ﹳᐧ;->ᵎﹶ:J

    iput-wide p9, p0, Lˑᵎ/ﹳᐧ;->ᵔᵢ:J

    iput-wide p11, p0, Lˑᵎ/ﹳᐧ;->ʼˎ:J

    iput-object p13, p0, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iput p14, p0, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    iput p15, p0, Lˑᵎ/ﹳᐧ;->ﾞʻ:I

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lˑᵎ/ﹳᐧ;->ˉʿ:J

    move-wide/from16 p1, p18

    iput-wide p1, p0, Lˑᵎ/ﹳᐧ;->ᵔʾ:J

    move-wide/from16 p1, p20

    iput-wide p1, p0, Lˑᵎ/ﹳᐧ;->ˉˆ:J

    move-wide/from16 p1, p22

    iput-wide p1, p0, Lˑᵎ/ﹳᐧ;->ʼᐧ:J

    move/from16 p1, p24

    iput-boolean p1, p0, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    move/from16 p1, p25

    iput p1, p0, Lˑᵎ/ﹳᐧ;->ﹳᐧ:I

    move/from16 p1, p26

    iput p1, p0, Lˑᵎ/ﹳᐧ;->יـ:I

    move/from16 p1, p27

    iput p1, p0, Lˑᵎ/ﹳᐧ;->ˏי:I

    move-wide/from16 p1, p28

    iput-wide p1, p0, Lˑᵎ/ﹳᐧ;->ʽﹳ:J

    move/from16 p1, p30

    iput p1, p0, Lˑᵎ/ﹳᐧ;->ʻٴ:I

    move/from16 p1, p31

    iput p1, p0, Lˑᵎ/ﹳᐧ;->ـˆ:I

    move-object/from16 p1, p32

    iput-object p1, p0, Lˑᵎ/ﹳᐧ;->ʾᵎ:Ljava/lang/String;

    move-object/from16 p1, p33

    iput-object p1, p0, Lˑᵎ/ﹳᐧ;->ʼʼ:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Ljava/lang/String;Lᴵˋ/ᵔᵢ;Lᴵˋ/ᵔᵢ;JJJLᴵˋ/ˑﹳ;IIJJJJZIIJIILjava/lang/String;Ljava/lang/Boolean;I)V
    .locals 36

    .prologue
    move/from16 v0, p33

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    sget-object v1, Lᴵˋ/ˈٴ;->ʾˋ:Lᴵˋ/ˈٴ;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const-class v1, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    sget-object v1, Lᴵˋ/ᵔᵢ;->ⁱˊ:Lᴵˋ/ᵔᵢ;

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    sget-object v1, Lᴵˋ/ᵔᵢ;->ⁱˊ:Lᴵˋ/ᵔᵢ;

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    const-wide/16 v13, 0x0

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    sget-object v1, Lᴵˋ/ˑﹳ;->ˆʾ:Lᴵˋ/ˑﹳ;

    move-object v15, v1

    goto :goto_7

    :cond_7
    move-object/from16 v15, p13

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    const/16 v16, 0x0

    goto :goto_8

    :cond_8
    move/from16 v16, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    const/16 v17, 0x1

    if-eqz v1, :cond_9

    move/from16 v1, v17

    goto :goto_9

    :cond_9
    move/from16 v1, p15

    :goto_9
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x7530

    move-wide/from16 v18, v2

    goto :goto_a

    :cond_a
    move-wide/from16 v18, p16

    :goto_a
    and-int/lit16 v2, v0, 0x2000

    const-wide/16 v20, -0x1

    if-eqz v2, :cond_b

    move-wide/from16 v2, v20

    goto :goto_b

    :cond_b
    move-wide/from16 v2, p18

    :goto_b
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_c

    const-wide/16 v22, 0x0

    goto :goto_c

    :cond_c
    move-wide/from16 v22, p20

    :goto_c
    const v5, 0x8000

    and-int/2addr v5, v0

    if-eqz v5, :cond_d

    move-wide/from16 v24, v20

    goto :goto_d

    :cond_d
    move-wide/from16 v24, p22

    :goto_d
    const/high16 v5, 0x10000

    and-int/2addr v5, v0

    if-eqz v5, :cond_e

    const/16 v26, 0x0

    goto :goto_e

    :cond_e
    move/from16 v26, p24

    :goto_e
    const/high16 v5, 0x20000

    and-int/2addr v5, v0

    if-eqz v5, :cond_f

    move/from16 v27, v17

    goto :goto_f

    :cond_f
    move/from16 v27, p25

    :goto_f
    const/high16 v5, 0x40000

    and-int/2addr v5, v0

    if-eqz v5, :cond_10

    const/16 v28, 0x0

    goto :goto_10

    :cond_10
    move/from16 v28, p26

    :goto_10
    const/high16 v5, 0x100000

    and-int/2addr v5, v0

    if-eqz v5, :cond_11

    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v30, v20

    goto :goto_11

    :cond_11
    move-wide/from16 v30, p27

    :goto_11
    const/high16 v5, 0x200000

    and-int/2addr v5, v0

    if-eqz v5, :cond_12

    const/16 v32, 0x0

    goto :goto_12

    :cond_12
    move/from16 v32, p29

    :goto_12
    const/high16 v5, 0x400000

    and-int/2addr v5, v0

    if-eqz v5, :cond_13

    const/16 v5, -0x100

    move/from16 v33, v5

    goto :goto_13

    :cond_13
    move/from16 v33, p30

    :goto_13
    const/high16 v5, 0x800000

    and-int/2addr v5, v0

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    move-object/from16 v34, v5

    goto :goto_14

    :cond_14
    move-object/from16 v34, p31

    :goto_14
    const/high16 v5, 0x1000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_15

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v35, v0

    goto :goto_15

    :cond_15
    move-object/from16 v35, p32

    :goto_15
    const/16 v29, 0x0

    move-object/from16 v5, p3

    move/from16 v17, v1

    move-wide/from16 v20, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v35}, Lˑᵎ/ﹳᐧ;-><init>(Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Ljava/lang/String;Lᴵˋ/ᵔᵢ;Lᴵˋ/ᵔᵢ;JJJLᴵˋ/ˑﹳ;IIJJJJZIIIJIILjava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static ⁱˊ(Lˑᵎ/ﹳᐧ;Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Lᴵˋ/ᵔᵢ;IJIIJII)Lˑᵎ/ﹳᐧ;
    .locals 37

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v0, Lˑᵎ/ﹳᐧ;->ʽ:Ljava/lang/String;

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    iget-object v7, v0, Lˑᵎ/ﹳᐧ;->ˈ:Ljava/lang/String;

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_3

    iget-object v2, v0, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    :goto_3
    iget-object v9, v0, Lˑᵎ/ﹳᐧ;->ﾞᴵ:Lᴵˋ/ᵔᵢ;

    iget-wide v10, v0, Lˑᵎ/ﹳᐧ;->ᵎﹶ:J

    iget-wide v12, v0, Lˑᵎ/ﹳᐧ;->ᵔᵢ:J

    iget-wide v14, v0, Lˑᵎ/ﹳᐧ;->ʼˎ:J

    iget-object v2, v0, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_4

    iget v3, v0, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    move/from16 v17, v3

    goto :goto_4

    :cond_4
    move/from16 v17, p5

    :goto_4
    iget v3, v0, Lˑᵎ/ﹳᐧ;->ﾞʻ:I

    move-object/from16 v16, v2

    move/from16 v18, v3

    iget-wide v2, v0, Lˑᵎ/ﹳᐧ;->ˉʿ:J

    move-wide/from16 v19, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_5

    iget-wide v2, v0, Lˑᵎ/ﹳᐧ;->ᵔʾ:J

    move-wide/from16 v21, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v21, p6

    :goto_5
    iget-wide v2, v0, Lˑᵎ/ﹳᐧ;->ˉˆ:J

    move-wide/from16 v23, v2

    iget-wide v1, v0, Lˑᵎ/ﹳᐧ;->ʼᐧ:J

    iget-boolean v3, v0, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    move-wide/from16 v25, v1

    iget v1, v0, Lˑᵎ/ﹳᐧ;->ﹳᐧ:I

    const/high16 v2, 0x40000

    and-int v2, p13, v2

    if-eqz v2, :cond_6

    iget v2, v0, Lˑᵎ/ﹳᐧ;->יـ:I

    move/from16 v29, v2

    goto :goto_6

    :cond_6
    move/from16 v29, p8

    :goto_6
    const/high16 v2, 0x80000

    and-int v2, p13, v2

    if-eqz v2, :cond_7

    iget v2, v0, Lˑᵎ/ﹳᐧ;->ˏי:I

    move/from16 v30, v2

    goto :goto_7

    :cond_7
    move/from16 v30, p9

    :goto_7
    const/high16 v2, 0x100000

    and-int v2, p13, v2

    move/from16 v28, v1

    if-eqz v2, :cond_8

    iget-wide v1, v0, Lˑᵎ/ﹳᐧ;->ʽﹳ:J

    move-wide/from16 v31, v1

    goto :goto_8

    :cond_8
    move-wide/from16 v31, p10

    :goto_8
    const/high16 v1, 0x200000

    and-int v1, p13, v1

    if-eqz v1, :cond_9

    iget v1, v0, Lˑᵎ/ﹳᐧ;->ʻٴ:I

    move/from16 v33, v1

    goto :goto_9

    :cond_9
    move/from16 v33, p12

    :goto_9
    iget v1, v0, Lˑᵎ/ﹳᐧ;->ـˆ:I

    iget-object v2, v0, Lˑᵎ/ﹳᐧ;->ʾᵎ:Ljava/lang/String;

    move/from16 v34, v1

    iget-object v1, v0, Lˑᵎ/ﹳᐧ;->ʼʼ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v27, v3

    new-instance v3, Lˑᵎ/ﹳᐧ;

    move-object/from16 v36, v1

    move-object/from16 v35, v2

    invoke-direct/range {v3 .. v36}, Lˑᵎ/ﹳᐧ;-><init>(Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Ljava/lang/String;Lᴵˋ/ᵔᵢ;Lᴵˋ/ᵔᵢ;JJJLᴵˋ/ˑﹳ;IIJJJJZIIIJIILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lˑᵎ/ﹳᐧ;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lˑᵎ/ﹳᐧ;

    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, p1, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    iget-object v1, p1, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ʽ:Ljava/lang/String;

    iget-object v1, p1, Lˑᵎ/ﹳᐧ;->ʽ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ˈ:Ljava/lang/String;

    iget-object v1, p1, Lˑᵎ/ﹳᐧ;->ˈ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    iget-object v1, p1, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ﾞᴵ:Lᴵˋ/ᵔᵢ;

    iget-object v1, p1, Lˑᵎ/ﹳᐧ;->ﾞᴵ:Lᴵˋ/ᵔᵢ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-wide v0, p0, Lˑᵎ/ﹳᐧ;->ᵎﹶ:J

    iget-wide v2, p1, Lˑᵎ/ﹳᐧ;->ᵎﹶ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-wide v0, p0, Lˑᵎ/ﹳᐧ;->ᵔᵢ:J

    iget-wide v2, p1, Lˑᵎ/ﹳᐧ;->ᵔᵢ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-wide v0, p0, Lˑᵎ/ﹳᐧ;->ʼˎ:J

    iget-wide v2, p1, Lˑᵎ/ﹳᐧ;->ʼˎ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iget-object v1, p1, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    iget v1, p1, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    if-eq v0, v1, :cond_c

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lˑᵎ/ﹳᐧ;->ﾞʻ:I

    iget v1, p1, Lˑᵎ/ﹳᐧ;->ﾞʻ:I

    if-eq v0, v1, :cond_d

    goto/16 :goto_0

    :cond_d
    iget-wide v0, p0, Lˑᵎ/ﹳᐧ;->ˉʿ:J

    iget-wide v2, p1, Lˑᵎ/ﹳᐧ;->ˉʿ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    goto/16 :goto_0

    :cond_e
    iget-wide v0, p0, Lˑᵎ/ﹳᐧ;->ᵔʾ:J

    iget-wide v2, p1, Lˑᵎ/ﹳᐧ;->ᵔʾ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    goto :goto_0

    :cond_f
    iget-wide v0, p0, Lˑᵎ/ﹳᐧ;->ˉˆ:J

    iget-wide v2, p1, Lˑᵎ/ﹳᐧ;->ˉˆ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    goto :goto_0

    :cond_10
    iget-wide v0, p0, Lˑᵎ/ﹳᐧ;->ʼᐧ:J

    iget-wide v2, p1, Lˑᵎ/ﹳᐧ;->ʼᐧ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    goto :goto_0

    :cond_11
    iget-boolean v0, p0, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    iget-boolean v1, p1, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    if-eq v0, v1, :cond_12

    goto :goto_0

    :cond_12
    iget v0, p0, Lˑᵎ/ﹳᐧ;->ﹳᐧ:I

    iget v1, p1, Lˑᵎ/ﹳᐧ;->ﹳᐧ:I

    if-eq v0, v1, :cond_13

    goto :goto_0

    :cond_13
    iget v0, p0, Lˑᵎ/ﹳᐧ;->יـ:I

    iget v1, p1, Lˑᵎ/ﹳᐧ;->יـ:I

    if-eq v0, v1, :cond_14

    goto :goto_0

    :cond_14
    iget v0, p0, Lˑᵎ/ﹳᐧ;->ˏי:I

    iget v1, p1, Lˑᵎ/ﹳᐧ;->ˏי:I

    if-eq v0, v1, :cond_15

    goto :goto_0

    :cond_15
    iget-wide v0, p0, Lˑᵎ/ﹳᐧ;->ʽﹳ:J

    iget-wide v2, p1, Lˑᵎ/ﹳᐧ;->ʽﹳ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    goto :goto_0

    :cond_16
    iget v0, p0, Lˑᵎ/ﹳᐧ;->ʻٴ:I

    iget v1, p1, Lˑᵎ/ﹳᐧ;->ʻٴ:I

    if-eq v0, v1, :cond_17

    goto :goto_0

    :cond_17
    iget v0, p0, Lˑᵎ/ﹳᐧ;->ـˆ:I

    iget v1, p1, Lˑᵎ/ﹳᐧ;->ـˆ:I

    if-eq v0, v1, :cond_18

    goto :goto_0

    :cond_18
    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ʾᵎ:Ljava/lang/String;

    iget-object v1, p1, Lˑᵎ/ﹳᐧ;->ʾᵎ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ʼʼ:Ljava/lang/Boolean;

    iget-object p1, p1, Lˑᵎ/ﹳᐧ;->ʼʼ:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1a
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ʽ:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lˑᵎ/ﹳᐧ;->ˈ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    invoke-virtual {v2}, Lᴵˋ/ᵔᵢ;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ﾞᴵ:Lᴵˋ/ᵔᵢ;

    invoke-virtual {v0}, Lᴵˋ/ᵔᵢ;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˑᵎ/ﹳᐧ;->ᵎﹶ:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˑᵎ/ﹳᐧ;->ᵔᵢ:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˑᵎ/ﹳᐧ;->ʼˎ:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    invoke-virtual {v2}, Lᴵˋ/ˑﹳ;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lˑᵎ/ﹳᐧ;->ﾞʻ:I

    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˑᵎ/ﹳᐧ;->ˉʿ:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˑᵎ/ﹳᐧ;->ᵔʾ:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˑᵎ/ﹳᐧ;->ˉˆ:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˑᵎ/ﹳᐧ;->ʼᐧ:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lˑᵎ/ﹳᐧ;->ﹳᐧ:I

    invoke-static {v2}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lˑᵎ/ﹳᐧ;->יـ:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lˑᵎ/ﹳᐧ;->ˏי:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v5, p0, Lˑᵎ/ﹳᐧ;->ʽﹳ:J

    ushr-long v3, v5, v4

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lˑᵎ/ﹳᐧ;->ʻٴ:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lˑᵎ/ﹳᐧ;->ـˆ:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ʾᵎ:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lˑᵎ/ﹳᐧ;->ʼʼ:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{WorkSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ﾞʻ(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lˑᵎ/ﹳᐧ;->ᵔᵢ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳٴ()J
    .locals 19

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    sget-object v2, Lᴵˋ/ˈٴ;->ʾˋ:Lᴵˋ/ˈٴ;

    if-ne v1, v2, :cond_0

    iget v1, v0, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-wide v7, v0, Lˑᵎ/ﹳᐧ;->ᵔʾ:J

    invoke-virtual {v0}, Lˑᵎ/ﹳᐧ;->ʽ()Z

    move-result v10

    iget-wide v11, v0, Lˑᵎ/ﹳᐧ;->ᵎﹶ:J

    iget-wide v13, v0, Lˑᵎ/ﹳᐧ;->ʼˎ:J

    iget-wide v3, v0, Lˑᵎ/ﹳᐧ;->ᵔᵢ:J

    iget-wide v5, v0, Lˑᵎ/ﹳᐧ;->ʽﹳ:J

    move-wide v15, v3

    iget v3, v0, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    iget v4, v0, Lˑᵎ/ﹳᐧ;->ﾞʻ:I

    move-wide/from16 v17, v5

    iget-wide v5, v0, Lˑᵎ/ﹳᐧ;->ˉʿ:J

    iget v9, v0, Lˑᵎ/ﹳᐧ;->יـ:I

    invoke-static/range {v2 .. v18}, Lˈˋ/ʾˊ;->ˑﹳ(ZIIJJIZJJJJ)J

    move-result-wide v1

    return-wide v1
.end method
