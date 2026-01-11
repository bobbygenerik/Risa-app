.class public final Lʽˑ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ʼˎ;


# static fields
.field public static final ˈʿ:Lʻʿ/ᵔﹳ;


# instance fields
.field public final ʽʽ:Lʻᴵ/יـ;

.field public final ʾˋ:Lᐧﹳ/ʽ;

.field public ˆﾞ:Z

.field public final ˈٴ:Ljava/util/HashMap;

.field public ˉٴ:Landroid/os/Handler;

.field public ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public ٴʼ:Lʽˑ/ˉˆ;

.field public ٴᵢ:Lᵔⁱ/ˉʿ;

.field public final ᴵˊ:Lʽˑ/ﹳᐧ;

.field public final ᴵᵔ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public ᵎˊ:Landroid/net/Uri;

.field public ᵎⁱ:Lﹶˎ/ˆʾ;

.field public ᵔי:Lʽˑ/ﾞʻ;

.field public ᵔٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʻʿ/ᵔﹳ;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lʻʿ/ᵔﹳ;-><init>(I)V

    sput-object v0, Lʽˑ/ʽ;->ˈʿ:Lʻʿ/ᵔﹳ;

    return-void
.end method

.method public constructor <init>(Lᐧﹳ/ʽ;Lʻᴵ/יـ;Lʽˑ/ﹳᐧ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽˑ/ʽ;->ʾˋ:Lᐧﹳ/ʽ;

    iput-object p3, p0, Lʽˑ/ʽ;->ᴵˊ:Lʽˑ/ﹳᐧ;

    iput-object p2, p0, Lʽˑ/ʽ;->ʽʽ:Lʻᴵ/יـ;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lʽˑ/ʽ;->ᴵᵔ:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lʽˑ/ʽ;->ᵔٴ:J

    return-void
.end method


# virtual methods
.method public final ʼʼ(Lᵔⁱ/ٴﹶ;JJ)V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lᵔⁱ/ᵔﹳ;

    iget-object v2, v1, Lᵔⁱ/ᵔﹳ;->ˊʻ:Ljava/lang/Object;

    check-cast v2, Lʽˑ/ʼᐧ;

    instance-of v3, v2, Lʽˑ/ﾞʻ;

    if-eqz v3, :cond_0

    iget-object v4, v2, Lʽˑ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    sget-object v5, Lʽˑ/ˉˆ;->ﾞʻ:Lʽˑ/ˉˆ;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v4, Lʽⁱ/ᵔﹳ;

    invoke-direct {v4}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v5, "0"

    iput-object v5, v4, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    const-string v5, "application/x-mpegURL"

    invoke-static {v5}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    new-instance v8, Lʽⁱ/ﹳᐧ;

    invoke-direct {v8, v4}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    new-instance v6, Lʽˑ/ᵔʾ;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lʽˑ/ᵔʾ;-><init>(Landroid/net/Uri;Lʽⁱ/ﹳᐧ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v7, Lʽˑ/ˉˆ;

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v17, 0x0

    sget-object v18, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v8, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    move-object v12, v9

    move-object v13, v9

    move-object v14, v9

    move-object/from16 v19, v9

    invoke-direct/range {v7 .. v19}, Lʽˑ/ˉˆ;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lʽⁱ/ﹳᐧ;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v7, v2

    check-cast v7, Lʽˑ/ˉˆ;

    :goto_0
    iput-object v7, v0, Lʽˑ/ʽ;->ٴʼ:Lʽˑ/ˉˆ;

    iget-object v4, v7, Lʽˑ/ˉˆ;->ˑﹳ:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽˑ/ᵔʾ;

    iget-object v4, v4, Lʽˑ/ᵔʾ;->ﹳٴ:Landroid/net/Uri;

    iput-object v4, v0, Lʽˑ/ʽ;->ᵎˊ:Landroid/net/Uri;

    iget-object v4, v0, Lʽˑ/ʽ;->ᴵᵔ:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v6, Lʽˑ/ﹳٴ;

    invoke-direct {v6, v0}, Lʽˑ/ﹳٴ;-><init>(Lʽˑ/ʽ;)V

    invoke-virtual {v4, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v7, Lʽˑ/ˉˆ;->ˈ:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    new-instance v9, Lʽˑ/ⁱˊ;

    invoke-direct {v9, v0, v8}, Lʽˑ/ⁱˊ;-><init>(Lʽˑ/ʽ;Landroid/net/Uri;)V

    iget-object v10, v0, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lﹳᵢ/ﹳᐧ;

    iget-object v1, v1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v1, v1, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v6, p4

    invoke-direct {v4, v6, v7}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object v1, v0, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    iget-object v6, v0, Lʽˑ/ʽ;->ᵎˊ:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽˑ/ⁱˊ;

    if-eqz v3, :cond_2

    check-cast v2, Lʽˑ/ﾞʻ;

    invoke-virtual {v1, v2, v4}, Lʽˑ/ⁱˊ;->ﾞᴵ(Lʽˑ/ﾞʻ;Lﹳᵢ/ﹳᐧ;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v5}, Lʽˑ/ⁱˊ;->ʽ(Z)V

    :goto_2
    iget-object v1, v0, Lʽˑ/ʽ;->ʽʽ:Lʻᴵ/יـ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lʽˑ/ʽ;->ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->יـ(Lﹳᵢ/ﹳᐧ;I)V

    return-void
.end method

.method public final ʽ(Landroid/net/Uri;)Z
    .locals 7

    .prologue
    iget-object v0, p0, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʽˑ/ⁱˊ;

    iget-object v0, p1, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p1, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    iget-wide v2, v2, Lʽˑ/ﾞʻ;->ʽﹳ:J

    invoke-static {v2, v3}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v4, p1, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    iget-boolean v5, v4, Lʽˑ/ﾞʻ;->ˉˆ:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2

    iget v4, v4, Lʽˑ/ﾞʻ;->ˈ:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    if-eq v4, v6, :cond_2

    iget-wide v4, p1, Lʽˑ/ⁱˊ;->ᴵᵔ:J

    add-long/2addr v4, v2

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    return v6
.end method

.method public final ʽﹳ(Lᵔⁱ/ٴﹶ;JJI)V
    .locals 13

    .prologue
    check-cast p1, Lᵔⁱ/ᵔﹳ;

    if-nez p6, :cond_0

    new-instance v0, Lﹳᵢ/ﹳᐧ;

    iget-wide v1, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v1, p1, Lᵔⁱ/ᵔﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    invoke-direct {v0, v1}, Lﹳᵢ/ﹳᐧ;-><init>(Lـˊ/ᵔᵢ;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lﹳᵢ/ﹳᐧ;

    iget-wide v1, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v1, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v1, v1, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lʽˑ/ʽ;->ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v3, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʾᵎ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public final ـˆ(Lᵔⁱ/ٴﹶ;JJLjava/io/IOException;I)Lʼˊ/ⁱˊ;
    .locals 2

    .prologue
    check-cast p1, Lᵔⁱ/ᵔﹳ;

    new-instance p2, Lﹳᵢ/ﹳᐧ;

    iget-wide v0, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object p3, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object p3, p3, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    invoke-direct {p2, p4, p5}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget p1, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    new-instance p3, Lʼٴ/ʾᵎ;

    const/16 p4, 0xb

    invoke-direct {p3, p7, p4, p6}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    iget-object p4, p0, Lʽˑ/ʽ;->ʽʽ:Lʻᴵ/יـ;

    invoke-virtual {p4, p3}, Lʻᴵ/יـ;->ʽ(Lʼٴ/ʾᵎ;)J

    move-result-wide p3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p3, v0

    const/4 p7, 0x0

    if-nez p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    move p5, p7

    :goto_0
    iget-object v0, p0, Lʽˑ/ʽ;->ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {v0, p2, p1, p6, p5}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʻٴ(Lﹳᵢ/ﹳᐧ;ILjava/io/IOException;Z)V

    if-eqz p5, :cond_1

    sget-object p1, Lᵔⁱ/ˉʿ;->ˊʻ:Lʼˊ/ⁱˊ;

    return-object p1

    :cond_1
    new-instance p1, Lʼˊ/ⁱˊ;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p4, p2, p7}, Lʼˊ/ⁱˊ;-><init>(JZI)V

    return-object p1
.end method

.method public final ᵎﹶ(Lᵔⁱ/ٴﹶ;JJZ)V
    .locals 11

    check-cast p1, Lᵔⁱ/ᵔﹳ;

    new-instance v1, Lﹳᵢ/ﹳᐧ;

    iget-wide p2, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object p1, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object p1, p1, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide p1, p4

    invoke-direct {v1, p1, p2}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object p1, p0, Lʽˑ/ʽ;->ʽʽ:Lʻᴵ/יـ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lʽˑ/ʽ;->ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳᐧ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final ⁱˊ(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .prologue
    iget-object v0, p0, Lʽˑ/ʽ;->ᵔי:Lʽˑ/ﾞʻ;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lʽˑ/ﾞʻ;->ʻٴ:Lʽˑ/ٴﹶ;

    iget-boolean v1, v1, Lʽˑ/ٴﹶ;->ˑﹳ:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lʽˑ/ﾞʻ;->ˏי:Lʼʻ/ᵔי;

    check-cast v0, Lʼʻ/ᴵʼ;

    invoke-virtual {v0, p1}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽˑ/ᵔᵢ;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-wide v1, v0, Lʽˑ/ᵔᵢ;->ⁱˊ:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_HLS_msn"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget v0, v0, Lʽˑ/ᵔᵢ;->ʽ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "_HLS_part"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final ﹳٴ(Landroid/net/Uri;Z)Lʽˑ/ﾞʻ;
    .locals 4

    .prologue
    iget-object v0, p0, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽˑ/ⁱˊ;

    iget-object v1, v1, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    iget-object p2, p0, Lʽˑ/ʽ;->ᵎˊ:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lʽˑ/ʽ;->ٴʼ:Lʽˑ/ˉˆ;

    iget-object p2, p2, Lʽˑ/ˉˆ;->ˑﹳ:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʽˑ/ᵔʾ;

    iget-object v3, v3, Lʽˑ/ᵔʾ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p2, p0, Lʽˑ/ʽ;->ᵔי:Lʽˑ/ﾞʻ;

    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lʽˑ/ʽ;->ᵎˊ:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lʽˑ/ⁱˊ;

    iget-object v2, p2, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-eqz v3, :cond_1

    iput-object v2, p0, Lʽˑ/ʽ;->ᵔי:Lʽˑ/ﾞʻ;

    iget-object p2, p0, Lʽˑ/ʽ;->ᵎⁱ:Lﹶˎ/ˆʾ;

    invoke-virtual {p2, v2}, Lﹶˎ/ˆʾ;->ʾˋ(Lʽˑ/ﾞʻ;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lʽˑ/ʽ;->ⁱˊ(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Lʽˑ/ⁱˊ;->ˑﹳ(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʽˑ/ⁱˊ;

    iget-object p2, p1, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    iget-boolean v0, p1, Lʽˑ/ⁱˊ;->ᵎˊ:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p1, Lʽˑ/ⁱˊ;->ᵎˊ:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p2, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-nez p2, :cond_5

    invoke-virtual {p1, v0}, Lʽˑ/ⁱˊ;->ʽ(Z)V

    :cond_5
    :goto_2
    return-object v1
.end method
