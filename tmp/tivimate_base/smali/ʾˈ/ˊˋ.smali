.class public final Lʾˈ/ˊˋ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public final synthetic ˆﾞ:Lʾˈ/ᵔٴ;

.field public ˉٴ:Lˉᵎ/ᵎﹶ;

.field public ˊʻ:Lʾˈ/ـˏ;

.field public ٴʼ:Lᵎʽ/ˆʾ;

.field public ٴᵢ:Lʾˈ/ˑٴ;

.field public ᴵᵔ:Lʾˈ/ـˆ;

.field public ᵎˊ:I

.field public ᵎⁱ:Lʾˈ/ᵔٴ;

.field public final synthetic ᵔי:Lʾˈ/ـˏ;


# direct methods
.method public constructor <init>(Lʾˈ/ـˏ;Lʾˈ/ᵔٴ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lʾˈ/ˊˋ;->ᵔי:Lʾˈ/ـˏ;

    iput-object p2, p0, Lʾˈ/ˊˋ;->ˆﾞ:Lʾˈ/ᵔٴ;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lᴵי/ـˆ;

    check-cast p2, Lˈי/ˈ;

    invoke-virtual {p0, p1, p2}, Lʾˈ/ˊˋ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʾˈ/ˊˋ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʾˈ/ˊˋ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 2

    new-instance p1, Lʾˈ/ˊˋ;

    iget-object v0, p0, Lʾˈ/ˊˋ;->ᵔי:Lʾˈ/ـˏ;

    iget-object v1, p0, Lʾˈ/ˊˋ;->ˆﾞ:Lʾˈ/ᵔٴ;

    invoke-direct {p1, v0, v1, p2}, Lʾˈ/ˊˋ;-><init>(Lʾˈ/ـˏ;Lʾˈ/ᵔٴ;Lˈי/ˈ;)V

    return-object p1
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lʾˈ/ˊˋ;->ᵎˊ:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, v1, Lʾˈ/ˊˋ;->ᵔי:Lʾˈ/ـˏ;

    sget-object v6, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lʾˈ/ˊˋ;->ٴʼ:Lᵎʽ/ˆʾ;

    iget-object v2, v1, Lʾˈ/ˊˋ;->ᵎⁱ:Lʾˈ/ᵔٴ;

    iget-object v3, v1, Lʾˈ/ˊˋ;->ˉٴ:Lˉᵎ/ᵎﹶ;

    iget-object v4, v1, Lʾˈ/ˊˋ;->ٴᵢ:Lʾˈ/ˑٴ;

    iget-object v5, v1, Lʾˈ/ˊˋ;->ˊʻ:Lʾˈ/ـˏ;

    iget-object v6, v1, Lʾˈ/ˊˋ;->ᴵᵔ:Lʾˈ/ـˆ;

    invoke-static/range {p1 .. p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object v9, v2

    move-object/from16 v2, p1

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput v4, v1, Lʾˈ/ˊˋ;->ᵎˊ:I

    invoke-static {v5, v1}, Lʾˈ/ـˏ;->ﹳٴ(Lʾˈ/ـˏ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v5, Lʾˈ/ـˏ;->ⁱˊ:Lʽʼ/ˑﹳ;

    iput v3, v1, Lʾˈ/ˊˋ;->ᵎˊ:I

    sget-object v3, Lʾˈ/ـˆ;->ʽ:Lʾˈ/ʼᐧ;

    invoke-virtual {v3, v0, v1}, Lʾˈ/ʼᐧ;->ﹳٴ(Lʽʼ/ˑﹳ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast v0, Lʾˈ/ـˆ;

    sget-object v4, Lʾˈ/ˑٴ;->ﹳٴ:Lʾˈ/ˑٴ;

    iget-object v3, v5, Lʾˈ/ـˏ;->ﹳٴ:Lˉᵎ/ᵎﹶ;

    iget-object v7, v5, Lʾˈ/ـˏ;->ʽ:Lᵎʽ/ˆʾ;

    sget-object v8, Lˉᴵ/ʽ;->ﹳٴ:Lˉᴵ/ʽ;

    iput-object v0, v1, Lʾˈ/ˊˋ;->ᴵᵔ:Lʾˈ/ـˆ;

    iput-object v5, v1, Lʾˈ/ˊˋ;->ˊʻ:Lʾˈ/ـˏ;

    iput-object v4, v1, Lʾˈ/ˊˋ;->ٴᵢ:Lʾˈ/ˑٴ;

    iput-object v3, v1, Lʾˈ/ˊˋ;->ˉٴ:Lˉᵎ/ᵎﹶ;

    iget-object v9, v1, Lʾˈ/ˊˋ;->ˆﾞ:Lʾˈ/ᵔٴ;

    iput-object v9, v1, Lʾˈ/ˊˋ;->ᵎⁱ:Lʾˈ/ᵔٴ;

    iput-object v7, v1, Lʾˈ/ˊˋ;->ٴʼ:Lᵎʽ/ˆʾ;

    iput v2, v1, Lʾˈ/ˊˋ;->ᵎˊ:I

    invoke-virtual {v8, v1}, Lˉᴵ/ʽ;->ⁱˊ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_6

    :goto_2
    return-object v6

    :cond_6
    move-object v6, v0

    move-object v0, v7

    :goto_3
    check-cast v2, Ljava/util/Map;

    iget-object v7, v6, Lʾˈ/ـˆ;->ﹳٴ:Ljava/lang/String;

    iget-object v6, v6, Lʾˈ/ـˆ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lʾˈ/ˈʿ;

    new-instance v10, Lʾˈ/ᴵˑ;

    iget-object v11, v9, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    iget-object v12, v9, Lʾˈ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    iget v13, v9, Lʾˈ/ᵔٴ;->ʽ:I

    iget-wide v14, v9, Lʾˈ/ᵔٴ;->ˈ:J

    new-instance v8, Lʾˈ/ٴﹶ;

    sget-object v9, Lˉᴵ/ˈ;->ᴵˊ:Lˉᴵ/ˈ;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lﹳˎ/ʼˎ;

    sget-object v16, Lʾˈ/ˆʾ;->ˈٴ:Lʾˈ/ˆʾ;

    sget-object v17, Lʾˈ/ˆʾ;->ʽʽ:Lʾˈ/ˆʾ;

    sget-object v18, Lʾˈ/ˆʾ;->ᴵˊ:Lʾˈ/ˆʾ;

    if-nez v9, :cond_7

    move-object/from16 p1, v0

    move-object/from16 v9, v18

    goto :goto_4

    :cond_7
    iget-object v9, v9, Lﹳˎ/ʼˎ;->ﹳٴ:Lʼٴ/ٴᵢ;

    invoke-virtual {v9}, Lʼٴ/ٴᵢ;->ﹳٴ()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object/from16 p1, v0

    move-object/from16 v9, v17

    goto :goto_4

    :cond_8
    move-object/from16 p1, v0

    move-object/from16 v9, v16

    :goto_4
    sget-object v0, Lˉᴵ/ˈ;->ʾˋ:Lˉᴵ/ˈ;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳˎ/ʼˎ;

    if-nez v0, :cond_9

    move-object/from16 v0, v18

    goto :goto_5

    :cond_9
    iget-object v0, v0, Lﹳˎ/ʼˎ;->ﹳٴ:Lʼٴ/ٴᵢ;

    invoke-virtual {v0}, Lʼٴ/ٴᵢ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, v17

    goto :goto_5

    :cond_a
    move-object/from16 v0, v16

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lᵎʽ/ˆʾ;->ﹳٴ()D

    move-result-wide v1

    invoke-direct {v8, v9, v0, v1, v2}, Lʾˈ/ٴﹶ;-><init>(Lʾˈ/ˆʾ;Lʾˈ/ˆʾ;D)V

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object/from16 v16, v8

    invoke-direct/range {v10 .. v18}, Lʾˈ/ᴵˑ;-><init>(Ljava/lang/String;Ljava/lang/String;IJLʾˈ/ٴﹶ;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lʾˈ/ˑٴ;->ﹳٴ(Lˉᵎ/ᵎﹶ;)Lʾˈ/ⁱˊ;

    move-result-object v0

    invoke-direct {v4, v10, v0}, Lʾˈ/ˈʿ;-><init>(Lʾˈ/ᴵˑ;Lʾˈ/ⁱˊ;)V

    sget v0, Lʾˈ/ـˏ;->ᵎﹶ:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "FirebaseSessions"

    :try_start_0
    iget-object v0, v5, Lʾˈ/ـˏ;->ˈ:Lʾˈ/ﾞʻ;

    invoke-virtual {v0, v4}, Lʾˈ/ﾞʻ;->ﹳٴ(Lʾˈ/ˈʿ;)V

    const-string v0, "Successfully logged Session Start event."

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v2, "Error logging Session Start event to DataTransport: "

    nop

    :cond_b
    :goto_6
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0
.end method
