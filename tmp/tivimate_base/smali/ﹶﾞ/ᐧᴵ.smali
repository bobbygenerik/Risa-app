.class public final Lﹶﾞ/ᐧᴵ;
.super Lﹶﾞ/ˎᐧ;
.source "SourceFile"


# static fields
.field public static final ʿᵢ:Landroid/util/Pair;


# instance fields
.field public final ʼˈ:Lﹶﾞ/ᐧﾞ;

.field public ʽʽ:Landroid/content/SharedPreferences;

.field public final ʿ:Lᐧᵎ/ᵢי;

.field public final ˆﾞ:Lcom/bumptech/glide/ʼˎ;

.field public final ˈʿ:Lﹶﾞ/ᐧﾞ;

.field public ˈٴ:Landroid/content/SharedPreferences;

.field public final ˈⁱ:Lcom/bumptech/glide/ʼˎ;

.field public final ˉـ:Lⁱי/ʻᵎ;

.field public ˉٴ:Ljava/lang/String;

.field public final ˊʻ:Lⁱי/ʻᵎ;

.field public ˊˋ:Z

.field public final ˋᵔ:Lⁱי/ʻᵎ;

.field public final ˑٴ:Lⁱי/ʻᵎ;

.field public final ـˏ:Lﹶﾞ/ᐧﾞ;

.field public ٴʼ:J

.field public final ٴᵢ:Lcom/bumptech/glide/ʼˎ;

.field public final ᴵˑ:Lcom/bumptech/glide/ʼˎ;

.field public ᴵᵔ:Lʾⁱ/ˈ;

.field public final ᵎˊ:Lⁱי/ʻᵎ;

.field public ᵎⁱ:Z

.field public final ᵔי:Lﹶﾞ/ᐧﾞ;

.field public final ᵔٴ:Lᐧᵎ/ᵢי;

.field public final ﹳـ:Lⁱי/ʻᵎ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lﹶﾞ/ᐧᴵ;->ʿᵢ:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ᵎʻ;)V
    .locals 4

    invoke-direct {p0, p1}, Lﹶﾞ/ˎᐧ;-><init>(Lﹶﾞ/ᵎʻ;)V

    new-instance p1, Lⁱי/ʻᵎ;

    const-wide/32 v0, 0x1b7740

    const-string v2, "session_timeout"

    invoke-direct {p1, p0, v2, v0, v1}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ᵎˊ:Lⁱי/ʻᵎ;

    new-instance p1, Lﹶﾞ/ᐧﾞ;

    const/4 v0, 0x1

    const-string v1, "start_new_session"

    invoke-direct {p1, p0, v1, v0}, Lﹶﾞ/ᐧﾞ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;Z)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ᵔי:Lﹶﾞ/ᐧﾞ;

    new-instance p1, Lⁱי/ʻᵎ;

    const-string v0, "last_pause_time"

    const-wide/16 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ˑٴ:Lⁱי/ʻᵎ;

    new-instance p1, Lⁱי/ʻᵎ;

    const-string v0, "session_id"

    invoke-direct {p1, p0, v0, v1, v2}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ˋᵔ:Lⁱי/ʻᵎ;

    new-instance p1, Lcom/bumptech/glide/ʼˎ;

    const-string v0, "non_personalized_ads"

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/ʼˎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ˆﾞ:Lcom/bumptech/glide/ʼˎ;

    new-instance p1, Lᐧᵎ/ᵢי;

    const-string v0, "last_received_uri_timestamps_by_source"

    invoke-direct {p1, p0, v0}, Lᐧᵎ/ᵢי;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ᵔٴ:Lᐧᵎ/ᵢי;

    new-instance p1, Lﹶﾞ/ᐧﾞ;

    const-string v0, "allow_remote_dynamite"

    const/4 v3, 0x0

    invoke-direct {p1, p0, v0, v3}, Lﹶﾞ/ᐧﾞ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;Z)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ˈʿ:Lﹶﾞ/ᐧﾞ;

    new-instance p1, Lⁱי/ʻᵎ;

    const-string v0, "first_open_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ˊʻ:Lⁱי/ʻᵎ;

    const-string p1, "app_install_time"

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    new-instance p1, Lcom/bumptech/glide/ʼˎ;

    const-string v0, "app_instance_id"

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/ʼˎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ٴᵢ:Lcom/bumptech/glide/ʼˎ;

    new-instance p1, Lﹶﾞ/ᐧﾞ;

    const-string v0, "app_backgrounded"

    invoke-direct {p1, p0, v0, v3}, Lﹶﾞ/ᐧﾞ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;Z)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ʼˈ:Lﹶﾞ/ᐧﾞ;

    new-instance p1, Lﹶﾞ/ᐧﾞ;

    const-string v0, "deep_link_retrieval_complete"

    invoke-direct {p1, p0, v0, v3}, Lﹶﾞ/ᐧﾞ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;Z)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ـˏ:Lﹶﾞ/ᐧﾞ;

    new-instance p1, Lⁱי/ʻᵎ;

    const-string v0, "deep_link_retrieval_attempts"

    invoke-direct {p1, p0, v0, v1, v2}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ﹳـ:Lⁱי/ʻᵎ;

    new-instance p1, Lcom/bumptech/glide/ʼˎ;

    const-string v0, "firebase_feature_rollouts"

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/ʼˎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ˈⁱ:Lcom/bumptech/glide/ʼˎ;

    new-instance p1, Lcom/bumptech/glide/ʼˎ;

    const-string v0, "deferred_attribution_cache"

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/ʼˎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ᴵˑ:Lcom/bumptech/glide/ʼˎ;

    new-instance p1, Lⁱי/ʻᵎ;

    const-string v0, "deferred_attribution_cache_timestamp"

    invoke-direct {p1, p0, v0, v1, v2}, Lⁱי/ʻᵎ;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ˉـ:Lⁱי/ʻᵎ;

    new-instance p1, Lᐧᵎ/ᵢי;

    const-string v0, "default_event_parameters"

    invoke-direct {p1, p0, v0}, Lᐧᵎ/ᵢי;-><init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;)V

    iput-object p1, p0, Lﹶﾞ/ᐧᴵ;->ʿ:Lᐧᵎ/ᵢי;

    return-void
.end method


# virtual methods
.method public final ʼᵢ()Landroid/content/SharedPreferences;
    .locals 1

    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ˎᐧ;->ʽˑ()V

    iget-object v0, p0, Lﹶﾞ/ᐧᴵ;->ʽʽ:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p0, Lﹶﾞ/ᐧᴵ;->ʽʽ:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final ˈـ()Lﹶﾞ/ᐧˎ;
    .locals 4

    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_settings"

    const-string v2, "G1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "consent_source"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v0}, Lﹶﾞ/ᐧˎ;->ʽ(ILjava/lang/String;)Lﹶﾞ/ᐧˎ;

    move-result-object v0

    return-object v0
.end method

.method public final ˎʾ(Lﹶﾞ/יʿ;)Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    const-string v2, "stored_tcf_param"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lﹶﾞ/יʿ;->ﹳٴ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ˎˉ(J)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᐧᴵ;->ᵎˊ:Lⁱי/ʻᵎ;

    invoke-virtual {v0}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lﹶﾞ/ᐧᴵ;->ˑٴ:Lⁱי/ʻᵎ;

    invoke-virtual {v0}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ˑˆ(Z)V
    .locals 3

    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "App measurement setting deferred collection"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final יˉ()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ˎᐧ;->ʽˑ()V

    iget-object v0, p0, Lﹶﾞ/ᐧᴵ;->ˈٴ:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v3, "_preferences"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Default prefs file"

    invoke-virtual {v2, v1, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lﹶﾞ/ᐧᴵ;->ˈٴ:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ᐧᴵ;->ˈٴ:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final ﹶˎ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ﾞˋ()Landroid/util/SparseArray;
    .locals 7

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᐧᴵ;->ᵔٴ:Lᐧᵎ/ᵢי;

    invoke-virtual {v0}, Lᐧᵎ/ᵢי;->ʼᐧ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uriSources"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "uriTimestamps"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, v0

    array-length v3, v1

    if-eq v3, v2, :cond_1

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "Trigger URI source and timestamp array lengths do not match"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0

    :cond_1
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget v4, v1, v3

    aget-wide v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method
