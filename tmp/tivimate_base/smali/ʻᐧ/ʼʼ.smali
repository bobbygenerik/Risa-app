.class public final Lʻᐧ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Lʻᐧ/ˏי;

.field public ʽ:Landroid/content/SharedPreferences;

.field public ˆʾ:Lʻᐧ/ˏי;

.field public ˈ:Landroid/content/SharedPreferences$Editor;

.field public ˑﹳ:Z

.field public ᵎﹶ:Landroidx/preference/PreferenceScreen;

.field public ᵔᵢ:Lʻᐧ/ˏי;

.field public ⁱˊ:J

.field public final ﹳٴ:Landroid/content/Context;

.field public final ﾞᴵ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lʻᐧ/ʼʼ;->ⁱˊ:J

    iput-object p1, p0, Lʻᐧ/ʼʼ;->ﹳٴ:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_preferences"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lʻᐧ/ʼʼ;->ﾞᴵ:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lʻᐧ/ʼʼ;->ʽ:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final ʽ()J
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lʻᐧ/ʼʼ;->ⁱˊ:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lʻᐧ/ʼʼ;->ⁱˊ:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ˈ()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    iget-object v0, p0, Lʻᐧ/ʼʼ;->ʽ:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lʻᐧ/ʼʼ;->ﾞᴵ:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lʻᐧ/ʼʼ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lʻᐧ/ʼʼ;->ʽ:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lʻᐧ/ʼʼ;->ʽ:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final ⁱˊ()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lʻᐧ/ʼʼ;->ˑﹳ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʻᐧ/ʼʼ;->ˈ:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lʻᐧ/ʼʼ;->ˈ()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lʻᐧ/ʼʼ;->ˈ:Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lʻᐧ/ʼʼ;->ˈ:Landroid/content/SharedPreferences$Editor;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lʻᐧ/ʼʼ;->ˈ()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;
    .locals 2

    new-instance v0, Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->ˉʿ(Lʻᐧ/ʼʼ;)V

    return-object v0
.end method
