.class public abstract Lᵔᵢ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ʽʽ:Lˆﾞ/ʽ;

.field public static final ʾˋ:Lʼﾞ/ˈʿ;

.field public static ˈٴ:Lˆﾞ/ʽ;

.field public static final ˉٴ:Ljava/lang/Object;

.field public static ˊʻ:Z

.field public static final ٴᵢ:Lיـ/ﾞᴵ;

.field public static final ᴵˊ:I

.field public static ᴵᵔ:Ljava/lang/Boolean;

.field public static final ᵎⁱ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lʼﾞ/ˈʿ;

    new-instance v1, Lʿʿ/ﹳٴ;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lʿʿ/ﹳٴ;-><init>(I)V

    invoke-direct {v0, v1}, Lʼﾞ/ˈʿ;-><init>(Lʿʿ/ﹳٴ;)V

    sput-object v0, Lᵔᵢ/ᵔʾ;->ʾˋ:Lʼﾞ/ˈʿ;

    const/16 v0, -0x64

    sput v0, Lᵔᵢ/ᵔʾ;->ᴵˊ:I

    const/4 v0, 0x0

    sput-object v0, Lᵔᵢ/ᵔʾ;->ʽʽ:Lˆﾞ/ʽ;

    sput-object v0, Lᵔᵢ/ᵔʾ;->ˈٴ:Lˆﾞ/ʽ;

    sput-object v0, Lᵔᵢ/ᵔʾ;->ᴵᵔ:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Lᵔᵢ/ᵔʾ;->ˊʻ:Z

    new-instance v1, Lיـ/ﾞᴵ;

    invoke-direct {v1, v0}, Lיـ/ﾞᴵ;-><init>(I)V

    sput-object v1, Lᵔᵢ/ᵔʾ;->ٴᵢ:Lיـ/ﾞᴵ;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᵔᵢ/ᵔʾ;->ˉٴ:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᵔᵢ/ᵔʾ;->ᵎⁱ:Ljava/lang/Object;

    return-void
.end method

.method public static ʽ(Landroid/content/Context;)Z
    .locals 4

    .prologue
    sget-object v0, Lᵔᵢ/ᵔʾ;->ᴵᵔ:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :try_start_0
    sget v0, Lᵔᵢ/ᴵᵔ;->ʾˋ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Lᵔᵢ/ˈٴ;->ﹳٴ()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    :cond_0
    const/16 v0, 0x280

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lᵔᵢ/ᴵᵔ;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string v0, "autoStoreLocales"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lᵔᵢ/ᵔʾ;->ᴵᵔ:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "AppCompatDelegate"

    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    nop

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lᵔᵢ/ᵔʾ;->ᴵᵔ:Ljava/lang/Boolean;

    :cond_1
    :goto_1
    sget-object p0, Lᵔᵢ/ᵔʾ;->ᴵᵔ:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static ᵎﹶ(Lᵔᵢ/ᵢˏ;)V
    .locals 3

    .prologue
    sget-object v0, Lᵔᵢ/ᵔʾ;->ˉٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lᵔᵢ/ᵔʾ;->ٴᵢ:Lיـ/ﾞᴵ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lיـ/ﹳٴ;

    invoke-direct {v2, v1}, Lיـ/ﹳٴ;-><init>(Lיـ/ﾞᴵ;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lיـ/ﹳٴ;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lיـ/ﹳٴ;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵔᵢ/ᵔʾ;

    if-eq v1, p0, :cond_1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {v2}, Lיـ/ﹳٴ;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract ʼˎ(I)V
.end method

.method public abstract ˆʾ(Landroid/view/View;)V
.end method

.method public abstract ˑﹳ()V
.end method

.method public abstract ٴﹶ(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract ᵔᵢ(I)Z
.end method

.method public abstract ﹳٴ()V
.end method

.method public abstract ﾞʻ(Ljava/lang/CharSequence;)V
.end method

.method public abstract ﾞᴵ()V
.end method
