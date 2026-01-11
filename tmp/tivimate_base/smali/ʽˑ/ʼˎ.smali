.class public final Lʽˑ/ʼˎ;
.super Lʽˑ/ˆʾ;
.source "SourceFile"


# instance fields
.field public final ˆﾞ:Lʼʻ/ᵎⁱ;

.field public final ᵔי:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 19

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v18, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    const/4 v3, 0x0

    const-string v4, ""

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v1 .. v18}, Lʽˑ/ʼˎ;-><init>(Ljava/lang/String;Lʽˑ/ʼˎ;Ljava/lang/String;JIJLʽⁱ/ᵔʾ;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lʽˑ/ʼˎ;Ljava/lang/String;JIJLʽⁱ/ᵔʾ;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    move/from16 v15, p16

    invoke-direct/range {v0 .. v15}, Lʽˑ/ˆʾ;-><init>(Ljava/lang/String;Lʽˑ/ʼˎ;JIJLʽⁱ/ᵔʾ;Ljava/lang/String;Ljava/lang/String;JJZ)V

    move-object/from16 v1, p3

    iput-object v1, v0, Lʽˑ/ʼˎ;->ᵔי:Ljava/lang/String;

    invoke-static/range {p17 .. p17}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v1

    iput-object v1, v0, Lʽˑ/ʼˎ;->ˆﾞ:Lʼʻ/ᵎⁱ;

    return-void
.end method
