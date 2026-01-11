.class public abstract Lʻᐧ/ˏי;
.super Lˑʼ/ᴵᵔ;
.source "SourceFile"


# instance fields
.field public final ʻʿ:Lʻᐧ/ᵔﹳ;

.field public ʻᴵ:Lʻᐧ/ʼʼ;

.field public ʿـ:Z

.field public ـˊ:Landroidx/recyclerview/widget/RecyclerView;

.field public final ᐧˎ:Lʻᐧ/ﹳᐧ;

.field public ᵎʿ:Z

.field public ⁱי:Lˈˊ/ᵔﹳ;

.field public ﹳⁱ:I

.field public final ﹶ:Landroidx/leanback/widget/ᵔʾ;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lˑʼ/ᴵᵔ;-><init>()V

    new-instance v0, Lʻᐧ/ﹳᐧ;

    invoke-direct {v0, p0}, Lʻᐧ/ﹳᐧ;-><init>(Lʻᐧ/ˏי;)V

    iput-object v0, p0, Lʻᐧ/ˏי;->ᐧˎ:Lʻᐧ/ﹳᐧ;

    const v0, 0x7f0e012c

    iput v0, p0, Lʻᐧ/ˏי;->ﹳⁱ:I

    new-instance v0, Lʻᐧ/ᵔﹳ;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lʻᐧ/ᵔﹳ;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v0, p0, Lʻᐧ/ˏי;->ʻʿ:Lʻᐧ/ᵔﹳ;

    new-instance v0, Landroidx/leanback/widget/ᵔʾ;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lʻᐧ/ˏי;->ﹶ:Landroidx/leanback/widget/ᵔʾ;

    return-void
.end method


# virtual methods
.method public ʻᴵ(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    iget-object p2, p2, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->ⁱˊ(Landroid/os/Bundle;)V

    :cond_0
    iget-boolean p1, p0, Lʻᐧ/ˏי;->ᵎʿ:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    iget-object p1, p1, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lʻᐧ/ـˆ;

    invoke-direct {v0, p1}, Lʻᐧ/ـˆ;-><init>(Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lˋˋ/ᴵˑ;)V

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->ﾞʻ()V

    :cond_1
    iget-object p1, p0, Lʻᐧ/ˏי;->ⁱי:Lˈˊ/ᵔﹳ;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lˈˊ/ᵔﹳ;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lʻᐧ/ˏי;->ⁱי:Lˈˊ/ᵔﹳ;

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lʻᐧ/ˏי;->ʿـ:Z

    return-void
.end method

.method public ʽᵔ(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ᴵᵔ;->ʽᵔ(Landroid/os/Bundle;)V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0404fb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_0

    const p1, 0x7f1401af

    :cond_0
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance p1, Lʻᐧ/ʼʼ;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lʻᐧ/ʼʼ;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    iput-object p0, p1, Lʻᐧ/ʼʼ;->ˆʾ:Lʻᐧ/ˏי;

    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v0, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lʻᐧ/ˏי;->ˎʾ(Ljava/lang/String;)V

    return-void
.end method

.method public ʾˊ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʻᐧ/ˏי;->ﹶ:Landroidx/leanback/widget/ᵔʾ;

    iget-object v1, p0, Lʻᐧ/ˏי;->ʻʿ:Lʻᐧ/ᵔﹳ;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, p0, Lʻᐧ/ˏי;->ᵎʿ:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lˋˋ/ᴵˑ;)V

    iget-object v1, p0, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    iget-object v1, v1, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->ʼᐧ()V

    :cond_0
    iput-object v2, p0, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    return-void
.end method

.method public ʾﾞ(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    iget-object v0, v0, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->ʽ(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public ˈـ()Lˑʼ/ᴵᵔ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ˋـ(ILjava/lang/String;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lʻᐧ/ʼʼ;->ˑﹳ:Z

    new-instance v2, Lʻᐧ/ʾᵎ;

    invoke-direct {v2, v1, v0}, Lʻᐧ/ʾᵎ;-><init>(Landroid/content/Context;Lʻᐧ/ʼʼ;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :try_start_0
    invoke-virtual {v2, p1}, Lʻᐧ/ʾᵎ;->ʽ(Landroid/content/res/XmlResourceParser;)Landroidx/preference/PreferenceGroup;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    check-cast v1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->ˉʿ(Lʻᐧ/ʼʼ;)V

    iget-object p1, v0, Lʻᐧ/ʼʼ;->ˈ:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, v0, Lʻᐧ/ʼʼ;->ˑﹳ:Z

    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Landroidx/preference/PreferenceGroup;->ˉٴ(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    instance-of p1, v1, Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Preference object with key "

    const-string v1, " is not a PreferenceScreen"

    invoke-static {v0, p2, v1}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    check-cast v1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Lʻᐧ/ˏי;->ᵢˋ(Landroidx/preference/PreferenceScreen;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This should be called after super.onCreate."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract ˎʾ(Ljava/lang/String;)V
.end method

.method public ˎˉ(Landroidx/preference/Preference;)Z
    .locals 5

    .prologue
    iget-object v0, p1, Landroidx/preference/Preference;->ˈʿ:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lʻᐧ/ˏי;->ˈـ()Lˑʼ/ᴵᵔ;

    move-result-object v2

    instance-of v2, v2, Lʽᵔ/ᵔᵢ;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lʻᐧ/ˏי;->ˈـ()Lˑʼ/ᴵᵔ;

    move-result-object v1

    check-cast v1, Lʽᵔ/ᵔᵢ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v1, v3

    :cond_0
    move-object v2, p0

    :goto_0
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    instance-of v4, v2, Lʽᵔ/ᵔᵢ;

    if-eqz v4, :cond_1

    move-object v1, v2

    check-cast v1, Lʽᵔ/ᵔᵢ;

    move v1, v3

    :cond_1
    iget-object v2, v2, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    :cond_3
    if-nez v1, :cond_4

    const-string v1, "PreferenceFragment"

    const-string v2, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    nop

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᵎᵔ()Lˑʼ/ʿ;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->ˈ()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1}, Lˑʼ/ʿ;->ᵎˊ()Lˑʼ/ˑٴ;

    move-result-object v2

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ⁱי()Lᵔᵢ/ˆʾ;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    invoke-virtual {v2, v0}, Lˑʼ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˑʼ/ᴵᵔ;->ⁱᴵ(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Lˑʼ/ᴵᵔ;->ˋˊ(Lʻᐧ/ˏי;)V

    new-instance p1, Lˑʼ/ﹳٴ;

    invoke-direct {p1, v1}, Lˑʼ/ﹳٴ;-><init>(Lˑʼ/ʿ;)V

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ﹶ()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lˑʼ/ﹳٴ;->ﾞʻ(ILˑʼ/ᴵᵔ;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lˑʼ/ﹳٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {p1}, Lˑʼ/ﹳٴ;->ﾞᴵ()V

    :cond_4
    return v3

    :cond_5
    return v1
.end method

.method public ˑˆ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b031e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x7f0e012e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lˋˋ/ʻᵎ;)V

    new-instance p2, Lʻᐧ/ᵢˏ;

    invoke-direct {p2, p1}, Lʻᐧ/ᵢˏ;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lˋˋ/יﹳ;)V

    return-object p1
.end method

.method public final ᐧˎ()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object v0, p0, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    const/4 v1, 0x0

    iput-object v1, v0, Lʻᐧ/ʼʼ;->ᵔᵢ:Lʻᐧ/ˏי;

    iput-object v1, v0, Lʻᐧ/ʼʼ;->ʼˎ:Lʻᐧ/ˏי;

    return-void
.end method

.method public ᐧﹶ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    sget-object v1, Lʻᐧ/ᴵˊ;->ᵔᵢ:[I

    const v2, 0x7f0404f5

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    iget v0, p0, Lʻᐧ/ˏי;->ﹳⁱ:I

    invoke-virtual {p3, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lʻᐧ/ˏי;->ﹳⁱ:I

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, -0x1

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v5, 0x3

    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p3, p0, Lʻᐧ/ˏי;->ﹳⁱ:I

    invoke-virtual {p1, p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    instance-of v5, p3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_7

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p3}, Lʻᐧ/ˏי;->ˑˆ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lʻᐧ/ˏי;->ᐧˎ:Lʻᐧ/ﹳᐧ;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->ʼˎ(Lˋˋ/ˏᵢ;)V

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, v5, Lʻᐧ/ﹳᐧ;->ⁱˊ:I

    goto :goto_0

    :cond_0
    iput v3, v5, Lʻᐧ/ﹳᐧ;->ⁱˊ:I

    :goto_0
    iput-object v1, v5, Lʻᐧ/ﹳᐧ;->ﹳٴ:Landroid/graphics/drawable/Drawable;

    iget-object p1, v5, Lʻᐧ/ﹳᐧ;->ˈ:Lʻᐧ/ˏי;

    iget-object v1, p1, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->ˋᵔ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v6, "Cannot invalidate item decorations during a scroll or layout"

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v6}, Lˋˋ/ʻᵎ;->ʽ(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->ـˏ()V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :goto_1
    if-eq v2, v4, :cond_5

    iput v2, v5, Lʻᐧ/ﹳᐧ;->ⁱˊ:I

    iget-object p1, p1, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->ˋᵔ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v6}, Lˋˋ/ʻᵎ;->ʽ(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->ـˏ()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_5
    :goto_2
    iput-boolean v0, v5, Lʻᐧ/ﹳᐧ;->ʽ:Z

    iget-object p1, p0, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    iget-object p1, p0, Lʻᐧ/ˏי;->ʻʿ:Lʻᐧ/ᵔﹳ;

    iget-object p3, p0, Lʻᐧ/ˏי;->ﹶ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵢˋ(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    iget-object v1, v0, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    if-eq p1, v1, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->ʼᐧ()V

    :cond_0
    iput-object p1, v0, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lʻᐧ/ˏי;->ᵎʿ:Z

    iget-boolean v0, p0, Lʻᐧ/ˏי;->ʿـ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʻᐧ/ˏי;->ʻʿ:Lʻᐧ/ᵔﹳ;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public ⁱˉ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object v0, p0, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    iput-object p0, v0, Lʻᐧ/ʼʼ;->ᵔᵢ:Lʻᐧ/ˏי;

    iput-object p0, v0, Lʻᐧ/ʼʼ;->ʼˎ:Lʻᐧ/ˏי;

    return-void
.end method

.method public final ﹳᵢ(Ljava/lang/String;)V
    .locals 3

    .prologue
    new-instance v0, Lˈˊ/ᵔﹳ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, p0, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    iput-object v0, p0, Lʻᐧ/ˏי;->ⁱי:Lˈˊ/ᵔﹳ;

    return-void

    :cond_0
    invoke-virtual {v0}, Lˈˊ/ᵔﹳ;->run()V

    return-void
.end method

.method public final ﾞˋ(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 2

    .prologue
    iget-object v0, p0, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->ˉٴ(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method
