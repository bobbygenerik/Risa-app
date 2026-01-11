.class public Lᵔʾ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Menu;


# static fields
.field public static final ʼʼ:[I


# instance fields
.field public ʻٴ:Lᵔʾ/ﾞʻ;

.field public final ʼˎ:Ljava/util/ArrayList;

.field public ʼᐧ:Z

.field public ʽ:Z

.field public final ʽﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public ʾᵎ:Z

.field public final ˆʾ:Ljava/util/ArrayList;

.field public final ˈ:Z

.field public ˉʿ:Ljava/lang/CharSequence;

.field public ˉˆ:Landroid/view/View;

.field public final ˏי:Ljava/util/ArrayList;

.field public ˑﹳ:Lᵔʾ/ᵔᵢ;

.field public יـ:Z

.field public ـˆ:Z

.field public ٴﹶ:Z

.field public final ᵎﹶ:Ljava/util/ArrayList;

.field public ᵔʾ:Landroid/graphics/drawable/Drawable;

.field public ᵔᵢ:Z

.field public ᵔﹳ:Z

.field public final ⁱˊ:Landroid/content/res/Resources;

.field public final ﹳٴ:Landroid/content/Context;

.field public ﹳᐧ:Z

.field public ﾞʻ:I

.field public final ﾞᴵ:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lᵔʾ/ˆʾ;->ʼʼ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lᵔʾ/ˆʾ;->ﾞʻ:I

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->ʼᐧ:Z

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->ᵔﹳ:Z

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->ﹳᐧ:Z

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->יـ:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lᵔʾ/ˆʾ;->ˏי:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lᵔʾ/ˆʾ;->ʽﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->ـˆ:Z

    iput-object p1, p0, Lᵔʾ/ˆʾ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lᵔʾ/ˆʾ;->ⁱˊ:Landroid/content/res/Resources;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lᵔʾ/ˆʾ;->ᵎﹶ:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lᵔʾ/ˆʾ;->ᵔᵢ:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lᵔʾ/ˆʾ;->ʼˎ:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lᵔʾ/ˆʾ;->ˆʾ:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lᵔʾ/ˆʾ;->ٴﹶ:Z

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_2

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    sget-object v3, Lˋᵔ/ᵔי;->ﹳٴ:Ljava/lang/reflect/Method;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    invoke-static {v1}, Lʼᐧ/ʽ;->ʼᐧ(Landroid/view/ViewConfiguration;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "bool"

    const-string v3, "android"

    const-string v4, "config_showMenuShortcutsWhenKeyboardPresent"

    invoke-virtual {p1, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->ˈ:Z

    return-void
.end method


# virtual methods
.method public final add(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lᵔʾ/ˆʾ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lᵔʾ/ˆʾ;->ﹳٴ(IIILjava/lang/CharSequence;)Lᵔʾ/ﾞʻ;

    move-result-object p1

    return-object p1
.end method

.method public final add(IIII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lᵔʾ/ˆʾ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lᵔʾ/ˆʾ;->ﹳٴ(IIILjava/lang/CharSequence;)Lᵔʾ/ﾞʻ;

    move-result-object p1

    return-object p1
.end method

.method public final add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lᵔʾ/ˆʾ;->ﹳٴ(IIILjava/lang/CharSequence;)Lᵔʾ/ﾞʻ;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lᵔʾ/ˆʾ;->ﹳٴ(IIILjava/lang/CharSequence;)Lᵔʾ/ﾞʻ;

    move-result-object p1

    return-object p1
.end method

.method public final addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    invoke-virtual {p0, p1}, Lᵔʾ/ˆʾ;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lᵔʾ/ˆʾ;->ﹳٴ(IIILjava/lang/CharSequence;)Lᵔʾ/ﾞʻ;

    move-result-object v4

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lᵔʾ/ﾞʻ;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iput-object v3, v4, Lᵔʾ/ﾞʻ;->ᵎﹶ:Landroid/content/Intent;

    if-eqz p8, :cond_3

    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_3

    aput-object v4, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public final addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lᵔʾ/ˆʾ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lᵔʾ/ˆʾ;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lᵔʾ/ˆʾ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lᵔʾ/ˆʾ;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lᵔʾ/ˆʾ;->ﹳٴ(IIILjava/lang/CharSequence;)Lᵔʾ/ﾞʻ;

    move-result-object p1

    new-instance p2, Lᵔʾ/ʾˋ;

    iget-object p3, p0, Lᵔʾ/ˆʾ;->ﹳٴ:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lᵔʾ/ʾˋ;-><init>(Landroid/content/Context;Lᵔʾ/ˆʾ;Lᵔʾ/ﾞʻ;)V

    iput-object p2, p1, Lᵔʾ/ﾞʻ;->ˉˆ:Lᵔʾ/ʾˋ;

    iget-object p1, p1, Lᵔʾ/ﾞʻ;->ˑﹳ:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lᵔʾ/ʾˋ;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p2
.end method

.method public final addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lᵔʾ/ˆʾ;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ʻٴ:Lᵔʾ/ﾞʻ;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lᵔʾ/ˆʾ;->ˈ(Lᵔʾ/ﾞʻ;)Z

    :cond_0
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    return-void
.end method

.method public final clearHeader()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lᵔʾ/ˆʾ;->ᵔʾ:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lᵔʾ/ˆʾ;->ˉʿ:Ljava/lang/CharSequence;

    iput-object v0, p0, Lᵔʾ/ˆʾ;->ˉˆ:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    return-void
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lᵔʾ/ˆʾ;->ʽ(Z)V

    return-void
.end method

.method public final findItem(I)Landroid/view/MenuItem;
    .locals 5

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵔʾ/ﾞʻ;

    iget v4, v3, Lᵔʾ/ﾞʻ;->ﹳٴ:I

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v3}, Lᵔʾ/ﾞʻ;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lᵔʾ/ﾞʻ;->ˉˆ:Lᵔʾ/ʾˋ;

    invoke-virtual {v3, p1}, Lᵔʾ/ˆʾ;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public final hasVisibleItems()Z
    .locals 5

    .prologue
    iget-boolean v0, p0, Lᵔʾ/ˆʾ;->ʾᵎ:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵔʾ/ﾞʻ;

    invoke-virtual {v4}, Lᵔʾ/ﾞʻ;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .prologue
    invoke-virtual {p0, p1, p2}, Lᵔʾ/ˆʾ;->ᵎﹶ(ILandroid/view/KeyEvent;)Lᵔʾ/ﾞʻ;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final performIdentifierAction(II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lᵔʾ/ˆʾ;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lᵔʾ/ˆʾ;->ᵔﹳ(Landroid/view/MenuItem;Lᵔʾ/ʽﹳ;I)Z

    move-result p1

    return p1
.end method

.method public final performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .prologue
    invoke-virtual {p0, p1, p2}, Lᵔʾ/ˆʾ;->ᵎﹶ(ILandroid/view/KeyEvent;)Lᵔʾ/ﾞʻ;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lᵔʾ/ˆʾ;->ᵔﹳ(Landroid/view/MenuItem;Lᵔʾ/ʽﹳ;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lᵔʾ/ˆʾ;->ʽ(Z)V

    :cond_1
    return p1
.end method

.method public final removeGroup(I)V
    .locals 5

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵔʾ/ﾞʻ;

    iget v4, v4, Lᵔʾ/ﾞʻ;->ⁱˊ:I

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    add-int/lit8 v4, v2, 0x1

    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᵔʾ/ﾞʻ;

    iget v2, v2, Lᵔʾ/ﾞʻ;->ⁱˊ:I

    if-ne v2, p1, :cond_4

    if-ltz v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v3, v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    :goto_3
    move v2, v4

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    :cond_5
    return-void
.end method

.method public final removeItem(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵔʾ/ﾞʻ;

    iget v3, v3, Lᵔʾ/ﾞʻ;->ﹳٴ:I

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt v2, p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final setGroupCheckable(IZZ)V
    .locals 7

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵔʾ/ﾞʻ;

    iget v5, v4, Lᵔʾ/ﾞʻ;->ⁱˊ:I

    if-ne v5, p1, :cond_1

    iget v5, v4, Lᵔʾ/ﾞʻ;->ʾᵎ:I

    and-int/lit8 v5, v5, -0x5

    if-eqz p3, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    or-int/2addr v5, v6

    iput v5, v4, Lᵔʾ/ﾞʻ;->ʾᵎ:I

    invoke-virtual {v4, p2}, Lᵔʾ/ﾞʻ;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lᵔʾ/ˆʾ;->ـˆ:Z

    return-void
.end method

.method public final setGroupEnabled(IZ)V
    .locals 5

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵔʾ/ﾞʻ;

    iget v4, v3, Lᵔʾ/ﾞʻ;->ⁱˊ:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3, p2}, Lᵔʾ/ﾞʻ;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setGroupVisible(IZ)V
    .locals 10

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᵔʾ/ﾞʻ;

    iget v7, v6, Lᵔʾ/ﾞʻ;->ⁱˊ:I

    if-ne v7, p1, :cond_1

    iget v7, v6, Lᵔʾ/ﾞʻ;->ʾᵎ:I

    and-int/lit8 v8, v7, -0x9

    if-eqz p2, :cond_0

    move v9, v2

    goto :goto_1

    :cond_0
    const/16 v9, 0x8

    :goto_1
    or-int/2addr v8, v9

    iput v8, v6, Lᵔʾ/ﾞʻ;->ʾᵎ:I

    if-eq v7, v8, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {p0, v5}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    :cond_3
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lᵔʾ/ˆʾ;->ʽ:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    return-void
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final ʻٴ()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->ʼᐧ:Z

    iget-boolean v1, p0, Lᵔʾ/ˆʾ;->ᵔﹳ:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->ᵔﹳ:Z

    iget-boolean v0, p0, Lᵔʾ/ˆʾ;->ﹳᐧ:Z

    invoke-virtual {p0, v0}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    :cond_0
    return-void
.end method

.method public final ʼˎ()V
    .locals 9

    .prologue
    invoke-virtual {p0}, Lᵔʾ/ˆʾ;->ﾞʻ()Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v1, p0, Lᵔʾ/ˆʾ;->ٴﹶ:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lᵔʾ/ˆʾ;->ʽﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᵔʾ/ʽﹳ;

    if-nez v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Lᵔʾ/ʽﹳ;->ˆʾ()Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lᵔʾ/ˆʾ;->ʼˎ:Ljava/util/ArrayList;

    iget-object v2, p0, Lᵔʾ/ˆʾ;->ˆʾ:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᵔʾ/ﾞʻ;

    iget v7, v6, Lᵔʾ/ﾞʻ;->ʾᵎ:I

    const/16 v8, 0x20

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lᵔʾ/ˆʾ;->ﾞʻ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iput-boolean v3, p0, Lᵔʾ/ˆʾ;->ٴﹶ:Z

    return-void
.end method

.method public final ʼᐧ(Z)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lᵔʾ/ˆʾ;->ʼᐧ:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lᵔʾ/ˆʾ;->ᵔᵢ:Z

    iput-boolean v1, p0, Lᵔʾ/ˆʾ;->ٴﹶ:Z

    :cond_0
    iget-object p1, p0, Lᵔʾ/ˆʾ;->ʽﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lᵔʾ/ˆʾ;->ـˆ()V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᵔʾ/ʽﹳ;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lᵔʾ/ʽﹳ;->ˈ()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lᵔʾ/ˆʾ;->ʻٴ()V

    return-void

    :cond_4
    iput-boolean v1, p0, Lᵔʾ/ˆʾ;->ᵔﹳ:Z

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lᵔʾ/ˆʾ;->ﹳᐧ:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final ʽ(Z)V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lᵔʾ/ˆʾ;->יـ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->יـ:Z

    iget-object v0, p0, Lᵔʾ/ˆʾ;->ʽﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵔʾ/ʽﹳ;

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3, p0, p1}, Lᵔʾ/ʽﹳ;->ʽ(Lᵔʾ/ˆʾ;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lᵔʾ/ˆʾ;->יـ:Z

    return-void
.end method

.method public final ʽﹳ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    if-eqz p5, :cond_0

    iput-object p5, p0, Lᵔʾ/ˆʾ;->ˉˆ:Landroid/view/View;

    iput-object v0, p0, Lᵔʾ/ˆʾ;->ˉʿ:Ljava/lang/CharSequence;

    iput-object v0, p0, Lᵔʾ/ˆʾ;->ᵔʾ:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_0
    if-lez p1, :cond_1

    iget-object p2, p0, Lᵔʾ/ˆʾ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lᵔʾ/ˆʾ;->ˉʿ:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iput-object p2, p0, Lᵔʾ/ˆʾ;->ˉʿ:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    if-lez p3, :cond_3

    iget-object p1, p0, Lᵔʾ/ˆʾ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lᵔʾ/ˆʾ;->ᵔʾ:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    iput-object p4, p0, Lᵔʾ/ˆʾ;->ᵔʾ:Landroid/graphics/drawable/Drawable;

    :cond_4
    :goto_1
    iput-object v0, p0, Lᵔʾ/ˆʾ;->ˉˆ:Landroid/view/View;

    :goto_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    return-void
.end method

.method public ˆʾ()Ljava/lang/String;
    .locals 1

    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public ˈ(Lᵔʾ/ﾞʻ;)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ʽﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lᵔʾ/ˆʾ;->ʻٴ:Lᵔʾ/ﾞʻ;

    if-eq v1, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lᵔʾ/ˆʾ;->ـˆ()V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵔʾ/ʽﹳ;

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v4, p1}, Lᵔʾ/ʽﹳ;->ٴﹶ(Lᵔʾ/ﾞʻ;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-virtual {p0}, Lᵔʾ/ˆʾ;->ʻٴ()V

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lᵔʾ/ˆʾ;->ʻٴ:Lᵔʾ/ﾞʻ;

    :cond_4
    :goto_1
    return v2
.end method

.method public ˉʿ()Z
    .locals 1

    iget-boolean v0, p0, Lᵔʾ/ˆʾ;->ـˆ:Z

    return v0
.end method

.method public ˉˆ()Z
    .locals 1

    iget-boolean v0, p0, Lᵔʾ/ˆʾ;->ˈ:Z

    return v0
.end method

.method public final ˏי(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lᵔʾ/ˆʾ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android:menu:expandedactionview"

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lᵔʾ/ʾˋ;

    invoke-virtual {v3, p1}, Lᵔʾ/ˆʾ;->ˏי(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lᵔʾ/ˆʾ;->ˆʾ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    return-void
.end method

.method public ˑﹳ(Lᵔʾ/ˆʾ;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ˑﹳ:Lᵔʾ/ᵔᵢ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lᵔʾ/ᵔᵢ;->ˈ(Lᵔʾ/ˆʾ;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final יـ(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lᵔʾ/ˆʾ;->ˆʾ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lᵔʾ/ˆʾ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lᵔʾ/ʾˋ;

    invoke-virtual {v3, p1}, Lᵔʾ/ˆʾ;->יـ(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "android:menu:expandedactionview"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0, p1}, Lᵔʾ/ˆʾ;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final ـˆ()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lᵔʾ/ˆʾ;->ʼᐧ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->ʼᐧ:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->ᵔﹳ:Z

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->ﹳᐧ:Z

    :cond_0
    return-void
.end method

.method public ٴﹶ()Lᵔʾ/ˆʾ;
    .locals 0

    return-object p0
.end method

.method public final ᵎﹶ(ILandroid/view/KeyEvent;)Lᵔʾ/ﾞʻ;
    .locals 11

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ˏי:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v0, p1, p2}, Lᵔʾ/ˆʾ;->ᵔᵢ(Ljava/util/List;ILandroid/view/KeyEvent;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᵔʾ/ﾞʻ;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lᵔʾ/ˆʾ;->ᵔʾ()Z

    move-result v4

    move v6, v5

    :goto_0
    if-ge v6, p2, :cond_7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lᵔʾ/ﾞʻ;

    if-eqz v4, :cond_2

    iget-char v8, v7, Lᵔʾ/ﾞʻ;->ˆʾ:C

    goto :goto_1

    :cond_2
    iget-char v8, v7, Lᵔʾ/ﾞʻ;->ᵔᵢ:C

    :goto_1
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-ne v8, v10, :cond_3

    and-int/lit8 v10, v1, 0x2

    if-eqz v10, :cond_5

    :cond_3
    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v8, v9, :cond_4

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v4, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    const/16 v8, 0x43

    if-ne p1, v8, :cond_6

    :cond_5
    return-object v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method public ᵔʾ()Z
    .locals 1

    iget-boolean v0, p0, Lᵔʾ/ˆʾ;->ʽ:Z

    return v0
.end method

.method public final ᵔᵢ(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 17

    .prologue
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lᵔʾ/ˆʾ;->ᵔʾ()Z

    move-result v3

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v6

    const/16 v7, 0x43

    if-nez v6, :cond_0

    if-eq v1, v7, :cond_0

    move-object/from16 v6, p0

    goto :goto_3

    :cond_0
    move-object/from16 v6, p0

    iget-object v8, v6, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_6

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lᵔʾ/ﾞʻ;

    invoke-virtual {v12}, Lᵔʾ/ﾞʻ;->hasSubMenu()Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v12, Lᵔʾ/ﾞʻ;->ˉˆ:Lᵔʾ/ʾˋ;

    invoke-virtual {v13, v0, v1, v2}, Lᵔʾ/ˆʾ;->ᵔᵢ(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_1
    if-eqz v3, :cond_2

    iget-char v13, v12, Lᵔʾ/ﾞʻ;->ˆʾ:C

    goto :goto_1

    :cond_2
    iget-char v13, v12, Lᵔʾ/ﾞʻ;->ᵔᵢ:C

    :goto_1
    if-eqz v3, :cond_3

    iget v14, v12, Lᵔʾ/ﾞʻ;->ٴﹶ:I

    goto :goto_2

    :cond_3
    iget v14, v12, Lᵔʾ/ﾞʻ;->ʼˎ:I

    :goto_2
    const v15, 0x1100f

    const/16 v16, 0x0

    and-int v10, v4, v15

    and-int/2addr v14, v15

    if-ne v10, v14, :cond_5

    if-eqz v13, :cond_5

    iget-object v10, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v14, v10, v16

    if-eq v13, v14, :cond_4

    const/4 v14, 0x2

    aget-char v10, v10, v14

    if-eq v13, v10, :cond_4

    if-eqz v3, :cond_5

    const/16 v10, 0x8

    if-ne v13, v10, :cond_5

    if-ne v1, v7, :cond_5

    :cond_4
    invoke-virtual {v12}, Lᵔʾ/ﾞʻ;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public final ᵔﹳ(Landroid/view/MenuItem;Lᵔʾ/ʽﹳ;I)Z
    .locals 6

    .prologue
    check-cast p1, Lᵔʾ/ﾞʻ;

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lᵔʾ/ﾞʻ;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, p1, Lᵔʾ/ﾞʻ;->ᵔʾ:Lᵔʾ/ˆʾ;

    iget-object v2, p1, Lᵔʾ/ﾞʻ;->ʼᐧ:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v1, p1}, Lᵔʾ/ˆʾ;->ˑﹳ(Lᵔʾ/ˆʾ;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lᵔʾ/ﾞʻ;->ᵎﹶ:Landroid/content/Intent;

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v1, v1, Lᵔʾ/ˆʾ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MenuItemImpl"

    const-string v4, "Can\'t find activity to handle intent; ignoring"

    nop

    :cond_3
    iget-object v1, p1, Lᵔʾ/ﾞʻ;->ʾˋ:Lᵔʾ/ˉʿ;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lᵔʾ/ˉʿ;->ⁱˊ:Landroid/view/ActionProvider;

    invoke-virtual {v1}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_1
    iget-object v2, p1, Lᵔʾ/ﾞʻ;->ʾˋ:Lᵔʾ/ˉʿ;

    if-eqz v2, :cond_5

    iget-object v4, v2, Lᵔʾ/ˉʿ;->ⁱˊ:Landroid/view/ActionProvider;

    invoke-virtual {v4}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    invoke-virtual {p1}, Lᵔʾ/ﾞʻ;->ˑﹳ()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lᵔʾ/ﾞʻ;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_11

    invoke-virtual {p0, v3}, Lᵔʾ/ˆʾ;->ʽ(Z)V

    goto/16 :goto_6

    :cond_6
    invoke-virtual {p1}, Lᵔʾ/ﾞʻ;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_11

    invoke-virtual {p0, v3}, Lᵔʾ/ˆʾ;->ʽ(Z)V

    goto :goto_6

    :cond_8
    :goto_3
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_9

    invoke-virtual {p0, v0}, Lᵔʾ/ˆʾ;->ʽ(Z)V

    :cond_9
    invoke-virtual {p1}, Lᵔʾ/ﾞʻ;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_a

    new-instance p3, Lᵔʾ/ʾˋ;

    iget-object v5, p0, Lᵔʾ/ˆʾ;->ﹳٴ:Landroid/content/Context;

    invoke-direct {p3, v5, p0, p1}, Lᵔʾ/ʾˋ;-><init>(Landroid/content/Context;Lᵔʾ/ˆʾ;Lᵔʾ/ﾞʻ;)V

    iput-object p3, p1, Lᵔʾ/ﾞʻ;->ˉˆ:Lᵔʾ/ʾˋ;

    iget-object v5, p1, Lᵔʾ/ﾞʻ;->ˑﹳ:Ljava/lang/CharSequence;

    invoke-virtual {p3, v5}, Lᵔʾ/ʾˋ;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_a
    iget-object p1, p1, Lᵔʾ/ﾞʻ;->ˉˆ:Lᵔʾ/ʾˋ;

    if-eqz v4, :cond_b

    iget-object p3, v2, Lᵔʾ/ˉʿ;->ⁱˊ:Landroid/view/ActionProvider;

    invoke-virtual {p3, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    :cond_b
    iget-object p3, p0, Lᵔʾ/ˆʾ;->ʽﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    if-eqz p2, :cond_d

    invoke-interface {p2, p1}, Lᵔʾ/ʽﹳ;->ᵎﹶ(Lᵔʾ/ʾˋ;)Z

    move-result v0

    :cond_d
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵔʾ/ʽﹳ;

    if-nez v4, :cond_f

    invoke-virtual {p3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    if-nez v0, :cond_e

    invoke-interface {v4, p1}, Lᵔʾ/ʽﹳ;->ᵎﹶ(Lᵔʾ/ʾˋ;)Z

    move-result v0

    goto :goto_4

    :cond_10
    :goto_5
    or-int/2addr v1, v0

    if-nez v1, :cond_11

    invoke-virtual {p0, v3}, Lᵔʾ/ˆʾ;->ʽ(Z)V

    :cond_11
    :goto_6
    return v1

    :cond_12
    :goto_7
    return v0
.end method

.method public final ⁱˊ(Lᵔʾ/ʽﹳ;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lᵔʾ/ˆʾ;->ʽﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p2, p0}, Lᵔʾ/ʽﹳ;->ʼˎ(Landroid/content/Context;Lᵔʾ/ˆʾ;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lᵔʾ/ˆʾ;->ٴﹶ:Z

    return-void
.end method

.method public final ﹳٴ(IIILjava/lang/CharSequence;)Lᵔʾ/ﾞʻ;
    .locals 10

    .prologue
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_2

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    sget-object v1, Lᵔʾ/ˆʾ;->ʼʼ:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    or-int v7, v0, v1

    iget v9, p0, Lᵔʾ/ˆʾ;->ﾞʻ:I

    new-instance v2, Lᵔʾ/ﾞʻ;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lᵔʾ/ﾞʻ;-><init>(Lᵔʾ/ˆʾ;IIIILjava/lang/CharSequence;I)V

    iget-object p1, v3, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lᵔʾ/ﾞʻ;

    iget p4, p4, Lᵔʾ/ﾞʻ;->ˈ:I

    if-gt p4, v7, :cond_0

    add-int/2addr p2, p3

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p3}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    return-object v2

    :cond_2
    move-object v3, p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "order does not contain a valid category."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳᐧ(Lᵔʾ/ʽﹳ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ʽﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵔʾ/ʽﹳ;

    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final ﾞʻ()Ljava/util/ArrayList;
    .locals 7

    .prologue
    iget-boolean v0, p0, Lᵔʾ/ˆʾ;->ᵔᵢ:Z

    iget-object v1, p0, Lᵔʾ/ˆʾ;->ᵎﹶ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lᵔʾ/ˆʾ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᵔʾ/ﾞʻ;

    invoke-virtual {v5}, Lᵔʾ/ﾞʻ;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lᵔʾ/ˆʾ;->ᵔᵢ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔʾ/ˆʾ;->ٴﹶ:Z

    return-object v1
.end method

.method public ﾞᴵ(Lᵔʾ/ﾞʻ;)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lᵔʾ/ˆʾ;->ʽﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lᵔʾ/ˆʾ;->ـˆ()V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵔʾ/ʽﹳ;

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v4, p1}, Lᵔʾ/ʽﹳ;->ⁱˊ(Lᵔʾ/ﾞʻ;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-virtual {p0}, Lᵔʾ/ˆʾ;->ʻٴ()V

    if-eqz v2, :cond_4

    iput-object p1, p0, Lᵔʾ/ˆʾ;->ʻٴ:Lᵔʾ/ﾞʻ;

    :cond_4
    return v2
.end method
