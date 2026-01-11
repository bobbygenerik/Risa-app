.class public final Lᵎʽ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎʽ/ˉˆ;


# static fields
.field public static final ᵎﹶ:I

.field public static final ᵔᵢ:Lﹶˑ/ʼˎ;


# instance fields
.field public final ʽ:Lʾˈ/ⁱˊ;

.field public final ˈ:Lᵎʽ/ˈ;

.field public final ˑﹳ:Lᵎʽ/ᵔʾ;

.field public final ⁱˊ:Lʽʼ/ˑﹳ;

.field public final ﹳٴ:Lʾˈ/ˈˏ;

.field public final ﾞᴵ:Lﹶי/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lᐧˊ/ﹳٴ;->ˈٴ:I

    const/16 v0, 0x18

    sget-object v1, Lᐧˊ/ʽ;->ˊʻ:Lᐧˊ/ʽ;

    invoke-static {v0, v1}, Lﹳٴ/ﹳٴ;->ﹳـ(ILᐧˊ/ʽ;)J

    move-result-wide v0

    sget-object v2, Lᐧˊ/ʽ;->ˈٴ:Lᐧˊ/ʽ;

    invoke-static {v0, v1, v2}, Lᐧˊ/ﹳٴ;->ˑﹳ(JLᐧˊ/ʽ;)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lᵎʽ/ʽ;->ᵎﹶ:I

    new-instance v0, Lﹶˑ/ʼˎ;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lﹶˑ/ʼˎ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lᵎʽ/ʽ;->ᵔᵢ:Lﹶˑ/ʼˎ;

    return-void
.end method

.method public constructor <init>(Lʾˈ/ˈˏ;Lʽʼ/ˑﹳ;Lʾˈ/ⁱˊ;Lᵎʽ/ˈ;Lᵎʽ/ᵔʾ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎʽ/ʽ;->ﹳٴ:Lʾˈ/ˈˏ;

    iput-object p2, p0, Lᵎʽ/ʽ;->ⁱˊ:Lʽʼ/ˑﹳ;

    iput-object p3, p0, Lᵎʽ/ʽ;->ʽ:Lʾˈ/ⁱˊ;

    iput-object p4, p0, Lᵎʽ/ʽ;->ˈ:Lᵎʽ/ˈ;

    iput-object p5, p0, Lᵎʽ/ʽ;->ˑﹳ:Lᵎʽ/ᵔʾ;

    invoke-static {}, Lﹶי/ˈ;->ﹳٴ()Lﹶי/ʽ;

    move-result-object p1

    iput-object p1, p0, Lᵎʽ/ʽ;->ﾞᴵ:Lﹶי/ʽ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lˈי/ˈ;)Ljava/lang/Object;
    .locals 24

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ""

    instance-of v3, v0, Lᵎʽ/ⁱˊ;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lᵎʽ/ⁱˊ;

    iget v4, v3, Lᵎʽ/ⁱˊ;->ˉٴ:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lᵎʽ/ⁱˊ;->ˉٴ:I

    goto :goto_0

    :cond_0
    new-instance v3, Lᵎʽ/ⁱˊ;

    check-cast v0, Lᴵʾ/ʽ;

    invoke-direct {v3, v1, v0}, Lᵎʽ/ⁱˊ;-><init>(Lᵎʽ/ʽ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object v0, v3, Lᵎʽ/ⁱˊ;->ˊʻ:Ljava/lang/Object;

    iget v4, v3, Lᵎʽ/ⁱˊ;->ˉٴ:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-string v7, "FirebaseSessions"

    const/4 v8, 0x2

    sget-object v9, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    const/4 v10, 0x0

    sget-object v11, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v3, Lᵎʽ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lﹶי/ﹳٴ;

    :try_start_0
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v3, Lᵎʽ/ⁱˊ;->ᴵᵔ:Lﹶי/ﹳٴ;

    iget-object v12, v3, Lᵎʽ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    check-cast v12, Lᵎʽ/ʽ;

    :try_start_1
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v4

    goto/16 :goto_6

    :cond_3
    iget-object v4, v3, Lᵎʽ/ⁱˊ;->ᴵᵔ:Lﹶי/ﹳٴ;

    iget-object v12, v3, Lᵎʽ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    check-cast v12, Lᵎʽ/ʽ;

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object v0, v1, Lᵎʽ/ʽ;->ﾞᴵ:Lﹶי/ʽ;

    invoke-virtual {v0}, Lﹶי/ʽ;->ˉˆ()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v1, Lᵎʽ/ʽ;->ˑﹳ:Lᵎʽ/ᵔʾ;

    invoke-virtual {v4}, Lᵎʽ/ᵔʾ;->ⁱˊ()Z

    move-result v4

    if-nez v4, :cond_5

    return-object v9

    :cond_5
    iput-object v1, v3, Lᵎʽ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    iput-object v0, v3, Lᵎʽ/ⁱˊ;->ᴵᵔ:Lﹶי/ﹳٴ;

    iput v6, v3, Lᵎʽ/ⁱˊ;->ˉٴ:I

    invoke-virtual {v0, v3}, Lﹶי/ʽ;->ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v11, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object v4, v0

    move-object v12, v1

    :goto_1
    :try_start_2
    iget-object v0, v12, Lᵎʽ/ʽ;->ˑﹳ:Lᵎʽ/ᵔʾ;

    invoke-virtual {v0}, Lᵎʽ/ᵔʾ;->ⁱˊ()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Remote settings cache not expired. Using cached values."

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v4, v10}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    return-object v9

    :cond_7
    :try_start_3
    sget-object v0, Lʾˈ/ـˆ;->ʽ:Lʾˈ/ʼᐧ;

    iget-object v13, v12, Lᵎʽ/ʽ;->ⁱˊ:Lʽʼ/ˑﹳ;

    iput-object v12, v3, Lᵎʽ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    iput-object v4, v3, Lᵎʽ/ⁱˊ;->ᴵᵔ:Lﹶי/ﹳٴ;

    iput v8, v3, Lᵎʽ/ⁱˊ;->ˉٴ:I

    invoke-virtual {v0, v13, v3}, Lʾˈ/ʼᐧ;->ﹳٴ(Lʽʼ/ˑﹳ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_8

    goto/16 :goto_4

    :cond_8
    :goto_2
    check-cast v0, Lʾˈ/ـˆ;

    iget-object v0, v0, Lʾˈ/ـˆ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v0, "Error getting Firebase Installation ID. Skipping this Session Event."

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v4, v10}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    return-object v9

    :cond_9
    :try_start_4
    const-string v13, "X-Crashlytics-Installation-ID"

    new-instance v14, Lʻᵢ/ˑﹳ;

    invoke-direct {v14, v13, v0}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "X-Crashlytics-Device-Model"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lᵎʽ/ʽ;->ᵔᵢ:Lﹶˑ/ʼˎ;

    move/from16 p1, v5

    iget-object v5, v15, Lﹶˑ/ʼˎ;->ʾˋ:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v13, Lʻᵢ/ˑﹳ;

    invoke-direct {v13, v0, v5}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "X-Crashlytics-OS-Build-Version"

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move/from16 v16, v6

    iget-object v6, v15, Lﹶˑ/ʼˎ;->ʾˋ:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lʻᵢ/ˑﹳ;

    invoke-direct {v6, v0, v5}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "X-Crashlytics-OS-Display-Version"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iget-object v15, v15, Lﹶˑ/ʼˎ;->ʾˋ:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lʻᵢ/ˑﹳ;

    invoke-direct {v5, v0, v2}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "X-Crashlytics-API-Client-Version"

    iget-object v2, v12, Lᵎʽ/ʽ;->ʽ:Lʾˈ/ⁱˊ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "3.0.0"

    new-instance v15, Lʻᵢ/ˑﹳ;

    invoke-direct {v15, v0, v2}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    new-array v0, v0, [Lʻᵢ/ˑﹳ;

    const/4 v2, 0x0

    aput-object v14, v0, v2

    aput-object v13, v0, v16

    aput-object v6, v0, v8

    aput-object v5, v0, p1

    const/4 v2, 0x4

    aput-object v15, v0, v2

    invoke-static {v0}, Lﹶˈ/ˏי;->ʿ([Lʻᵢ/ˑﹳ;)Ljava/util/Map;

    move-result-object v19

    const-string v0, "Fetching settings from server."

    nop

    iget-object v0, v12, Lᵎʽ/ʽ;->ˈ:Lᵎʽ/ˈ;

    new-instance v2, Lᴵʼ/ʽ;

    invoke-direct {v2, v12, v10, v8}, Lᴵʼ/ʽ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    new-instance v5, Lʿᵢ/ᵔʾ;

    move/from16 v6, v16

    invoke-direct {v5, v8, v10, v6}, Lʿᵢ/ᵔʾ;-><init>(ILˈי/ˈ;I)V

    iput-object v4, v3, Lᵎʽ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    iput-object v10, v3, Lᵎʽ/ⁱˊ;->ᴵᵔ:Lﹶי/ﹳٴ;

    move/from16 v6, p1

    iput v6, v3, Lᵎʽ/ⁱˊ;->ˉٴ:I

    iget-object v6, v0, Lᵎʽ/ˈ;->ⁱˊ:Lˈי/ᵔᵢ;

    new-instance v17, Lʼⁱ/ˏⁱ;

    const/16 v22, 0x0

    const/16 v23, 0x8

    move-object/from16 v18, v0

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    invoke-direct/range {v17 .. v23}, Lʼⁱ/ˏⁱ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    move-object/from16 v0, v17

    invoke-static {v6, v0, v3}, Lᴵי/ʾᵎ;->ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v11, :cond_a

    goto :goto_3

    :cond_a
    move-object v0, v9

    :goto_3
    if-ne v0, v11, :cond_b

    :goto_4
    return-object v11

    :cond_b
    move-object v2, v4

    :goto_5
    invoke-interface {v2, v10}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    return-object v9

    :goto_6
    invoke-interface {v2, v10}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    throw v0
.end method

.method public final ˈ()Lᐧˊ/ﹳٴ;
    .locals 3

    .prologue
    iget-object v0, p0, Lᵎʽ/ʽ;->ˑﹳ:Lᵎʽ/ᵔʾ;

    invoke-virtual {v0}, Lᵎʽ/ᵔʾ;->ﹳٴ()Lᵎʽ/ᵎﹶ;

    move-result-object v0

    iget-object v0, v0, Lᵎʽ/ᵎﹶ;->ʽ:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget v1, Lᐧˊ/ﹳٴ;->ˈٴ:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lᐧˊ/ʽ;->ˈٴ:Lᐧˊ/ʽ;

    invoke-static {v0, v1}, Lﹳٴ/ﹳٴ;->ﹳـ(ILᐧˊ/ʽ;)J

    move-result-wide v0

    new-instance v2, Lᐧˊ/ﹳٴ;

    invoke-direct {v2, v0, v1}, Lᐧˊ/ﹳٴ;-><init>(J)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ⁱˊ()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lᵎʽ/ʽ;->ˑﹳ:Lᵎʽ/ᵔʾ;

    invoke-virtual {v0}, Lᵎʽ/ᵔʾ;->ﹳٴ()Lᵎʽ/ᵎﹶ;

    move-result-object v0

    iget-object v0, v0, Lᵎʽ/ᵎﹶ;->ⁱˊ:Ljava/lang/Double;

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lᵎʽ/ʽ;->ˑﹳ:Lᵎʽ/ᵔʾ;

    invoke-virtual {v0}, Lᵎʽ/ᵔʾ;->ﹳٴ()Lᵎʽ/ᵎﹶ;

    move-result-object v0

    iget-object v0, v0, Lᵎʽ/ᵎﹶ;->ﹳٴ:Ljava/lang/Boolean;

    return-object v0
.end method
