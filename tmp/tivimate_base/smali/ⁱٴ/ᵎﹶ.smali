.class public final Lⁱٴ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:I

.field public final ʼᐧ:Ljava/lang/Integer;

.field public final ʽ:Ljava/lang/String;

.field public final ˆʾ:I

.field public final ˈ:J

.field public final ˉʿ:Ljava/lang/Long;

.field public final ˉˆ:Ljava/lang/Integer;

.field public final ˑﹳ:J

.field public final ٴﹶ:Ljava/lang/Long;

.field public final ᵎﹶ:I

.field public final ᵔʾ:Ljava/lang/Integer;

.field public final ᵔᵢ:J

.field public final ᵔﹳ:Ljava/util/ArrayList;

.field public final ⁱˊ:Z

.field public final ﹳٴ:Lˊᐧ/ʽﹳ;

.field public final ﾞʻ:Ljava/lang/Long;

.field public final ﾞᴵ:J


# direct methods
.method public synthetic constructor <init>(Lˊᐧ/ʽﹳ;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V
    .locals 23

    .prologue
    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-wide v8, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-wide v10, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v10, p8

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const/4 v4, -0x1

    if-eqz v1, :cond_4

    move v12, v4

    goto :goto_4

    :cond_4
    move/from16 v12, p10

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-wide v13, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v13, p11

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move v15, v4

    goto :goto_6

    :cond_6
    move/from16 v15, p13

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move/from16 v16, v4

    goto :goto_7

    :cond_7
    move/from16 v16, p14

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    move-object/from16 v17, v2

    goto :goto_8

    :cond_8
    move-object/from16 v17, p15

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object/from16 v18, v2

    goto :goto_9

    :cond_9
    move-object/from16 v18, p16

    :goto_9
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    move-object/from16 v19, v2

    goto :goto_a

    :cond_a
    move-object/from16 v19, p17

    :goto_a
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v22}, Lⁱٴ/ᵎﹶ;-><init>(Lˊᐧ/ʽﹳ;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lˊᐧ/ʽﹳ;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱٴ/ᵎﹶ;->ﹳٴ:Lˊᐧ/ʽﹳ;

    iput-boolean p2, p0, Lⁱٴ/ᵎﹶ;->ⁱˊ:Z

    iput-object p3, p0, Lⁱٴ/ᵎﹶ;->ʽ:Ljava/lang/String;

    iput-wide p4, p0, Lⁱٴ/ᵎﹶ;->ˈ:J

    iput-wide p6, p0, Lⁱٴ/ᵎﹶ;->ˑﹳ:J

    iput-wide p8, p0, Lⁱٴ/ᵎﹶ;->ﾞᴵ:J

    iput p10, p0, Lⁱٴ/ᵎﹶ;->ᵎﹶ:I

    iput-wide p11, p0, Lⁱٴ/ᵎﹶ;->ᵔᵢ:J

    iput p13, p0, Lⁱٴ/ᵎﹶ;->ʼˎ:I

    iput p14, p0, Lⁱٴ/ᵎﹶ;->ˆʾ:I

    iput-object p15, p0, Lⁱٴ/ᵎﹶ;->ٴﹶ:Ljava/lang/Long;

    move-object/from16 p1, p16

    iput-object p1, p0, Lⁱٴ/ᵎﹶ;->ﾞʻ:Ljava/lang/Long;

    move-object/from16 p1, p17

    iput-object p1, p0, Lⁱٴ/ᵎﹶ;->ˉʿ:Ljava/lang/Long;

    move-object/from16 p1, p18

    iput-object p1, p0, Lⁱٴ/ᵎﹶ;->ᵔʾ:Ljava/lang/Integer;

    move-object/from16 p1, p19

    iput-object p1, p0, Lⁱٴ/ᵎﹶ;->ˉˆ:Ljava/lang/Integer;

    move-object/from16 p1, p20

    iput-object p1, p0, Lⁱٴ/ᵎﹶ;->ʼᐧ:Ljava/lang/Integer;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lⁱٴ/ᵎﹶ;->ᵔﹳ:Ljava/util/ArrayList;

    return-void
.end method
