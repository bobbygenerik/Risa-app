.class public final Lﹶﾞ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/lang/Long;

.field public final ʽ:J

.field public final ˆʾ:Ljava/lang/Long;

.field public final ˈ:J

.field public final ˑﹳ:J

.field public final ٴﹶ:Ljava/lang/Boolean;

.field public final ᵎﹶ:J

.field public final ᵔᵢ:Ljava/lang/Long;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 13

    .prologue
    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-static {p2}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ltz v10, :cond_0

    move v10, v12

    goto :goto_0

    :cond_0
    move v10, v11

    :goto_0
    invoke-static {v10}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    cmp-long v10, v2, v8

    if-ltz v10, :cond_1

    move v10, v12

    goto :goto_1

    :cond_1
    move v10, v11

    :goto_1
    invoke-static {v10}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    cmp-long v10, v4, v8

    if-ltz v10, :cond_2

    move v10, v12

    goto :goto_2

    :cond_2
    move v10, v11

    :goto_2
    invoke-static {v10}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    cmp-long v8, v6, v8

    if-ltz v8, :cond_3

    move v11, v12

    :cond_3
    invoke-static {v11}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    iput-object p1, p0, Lﹶﾞ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lﹶﾞ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    iput-wide v0, p0, Lﹶﾞ/ᵔﹳ;->ʽ:J

    iput-wide v2, p0, Lﹶﾞ/ᵔﹳ;->ˈ:J

    iput-wide v4, p0, Lﹶﾞ/ᵔﹳ;->ˑﹳ:J

    move-wide/from16 p1, p9

    iput-wide p1, p0, Lﹶﾞ/ᵔﹳ;->ﾞᴵ:J

    iput-wide v6, p0, Lﹶﾞ/ᵔﹳ;->ᵎﹶ:J

    move-object/from16 p1, p13

    iput-object p1, p0, Lﹶﾞ/ᵔﹳ;->ᵔᵢ:Ljava/lang/Long;

    move-object/from16 p1, p14

    iput-object p1, p0, Lﹶﾞ/ᵔﹳ;->ʼˎ:Ljava/lang/Long;

    move-object/from16 p1, p15

    iput-object p1, p0, Lﹶﾞ/ᵔﹳ;->ˆʾ:Ljava/lang/Long;

    move-object/from16 p1, p16

    iput-object p1, p0, Lﹶﾞ/ᵔﹳ;->ٴﹶ:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lﹶﾞ/ᵔﹳ;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lﹶﾞ/ᵔﹳ;

    iget-object v2, v0, Lﹶﾞ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, v0, Lﹶﾞ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    iget-wide v4, v0, Lﹶﾞ/ᵔﹳ;->ʽ:J

    iget-wide v6, v0, Lﹶﾞ/ᵔﹳ;->ˈ:J

    iget-wide v8, v0, Lﹶﾞ/ᵔﹳ;->ˑﹳ:J

    iget-wide v10, v0, Lﹶﾞ/ᵔﹳ;->ﾞᴵ:J

    iget-wide v12, v0, Lﹶﾞ/ᵔﹳ;->ᵎﹶ:J

    iget-object v14, v0, Lﹶﾞ/ᵔﹳ;->ᵔᵢ:Ljava/lang/Long;

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-direct/range {v1 .. v17}, Lﹶﾞ/ᵔﹳ;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public final ﹳٴ(J)Lﹶﾞ/ᵔﹳ;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lﹶﾞ/ᵔﹳ;

    iget-wide v6, v0, Lﹶﾞ/ᵔﹳ;->ˈ:J

    iget-wide v8, v0, Lﹶﾞ/ᵔﹳ;->ˑﹳ:J

    iget-object v2, v0, Lﹶﾞ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, v0, Lﹶﾞ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    iget-wide v4, v0, Lﹶﾞ/ᵔﹳ;->ʽ:J

    iget-wide v12, v0, Lﹶﾞ/ᵔﹳ;->ᵎﹶ:J

    iget-object v14, v0, Lﹶﾞ/ᵔﹳ;->ᵔᵢ:Ljava/lang/Long;

    iget-object v15, v0, Lﹶﾞ/ᵔﹳ;->ʼˎ:Ljava/lang/Long;

    iget-object v10, v0, Lﹶﾞ/ᵔﹳ;->ˆʾ:Ljava/lang/Long;

    iget-object v11, v0, Lﹶﾞ/ᵔﹳ;->ٴﹶ:Ljava/lang/Boolean;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-wide/from16 v10, p1

    invoke-direct/range {v1 .. v17}, Lﹶﾞ/ᵔﹳ;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1
.end method
