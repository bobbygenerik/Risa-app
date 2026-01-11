.class public final Lˉʿ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʻٴ:I

.field public ʼʼ:Ljava/lang/String;

.field public ʼˎ:I

.field public ʼᐧ:C

.field public ʽ:I

.field public ʽʽ:Landroid/content/res/ColorStateList;

.field public ʽﹳ:Z

.field public ʾˋ:Ljava/lang/CharSequence;

.field public ʾᵎ:Ljava/lang/String;

.field public ˆʾ:I

.field public ˈ:I

.field public ˈٴ:Landroid/graphics/PorterDuff$Mode;

.field public ˉʿ:I

.field public ˉˆ:I

.field public ˏי:Z

.field public ˑﹳ:I

.field public יـ:Z

.field public ـˆ:I

.field public ٴﹶ:Ljava/lang/CharSequence;

.field public ᴵˊ:Ljava/lang/CharSequence;

.field public final synthetic ᴵᵔ:Lˉʿ/ᵔᵢ;

.field public ᵎﹶ:Z

.field public ᵔʾ:C

.field public ᵔᵢ:Z

.field public ᵔﹳ:I

.field public ᵢˏ:Lᵔʾ/ˉʿ;

.field public ⁱˊ:I

.field public final ﹳٴ:Landroid/view/Menu;

.field public ﹳᐧ:I

.field public ﾞʻ:Ljava/lang/CharSequence;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Lˉʿ/ᵔᵢ;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉʿ/ᵎﹶ;->ᴵᵔ:Lˉʿ/ᵔᵢ;

    const/4 p1, 0x0

    iput-object p1, p0, Lˉʿ/ᵎﹶ;->ʽʽ:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lˉʿ/ᵎﹶ;->ˈٴ:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lˉʿ/ᵎﹶ;->ﹳٴ:Landroid/view/Menu;

    const/4 p1, 0x0

    iput p1, p0, Lˉʿ/ᵎﹶ;->ⁱˊ:I

    iput p1, p0, Lˉʿ/ᵎﹶ;->ʽ:I

    iput p1, p0, Lˉʿ/ᵎﹶ;->ˈ:I

    iput p1, p0, Lˉʿ/ᵎﹶ;->ˑﹳ:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˉʿ/ᵎﹶ;->ﾞᴵ:Z

    iput-boolean p1, p0, Lˉʿ/ᵎﹶ;->ᵎﹶ:Z

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Landroid/view/MenuItem;)V
    .locals 9

    .prologue
    iget-object v0, p0, Lˉʿ/ᵎﹶ;->ᴵᵔ:Lˉʿ/ᵔᵢ;

    iget-object v1, v0, Lˉʿ/ᵔᵢ;->ʽ:Landroid/content/Context;

    iget-boolean v2, p0, Lˉʿ/ᵎﹶ;->יـ:Z

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lˉʿ/ᵎﹶ;->ˏי:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lˉʿ/ᵎﹶ;->ʽﹳ:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget v3, p0, Lˉʿ/ᵎﹶ;->ﹳᐧ:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lˉʿ/ᵎﹶ;->ﾞʻ:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iget v3, p0, Lˉʿ/ᵎﹶ;->ˉʿ:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v2, p0, Lˉʿ/ᵎﹶ;->ʻٴ:I

    if-ltz v2, :cond_1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v2, p0, Lˉʿ/ᵎﹶ;->ʼʼ:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/content/Context;->isRestricted()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lˉʿ/ﾞᴵ;

    iget-object v3, v0, Lˉʿ/ᵔᵢ;->ˈ:Ljava/lang/Object;

    if-nez v3, :cond_2

    invoke-static {v1}, Lˉʿ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lˉʿ/ᵔᵢ;->ˈ:Ljava/lang/Object;

    :cond_2
    iget-object v1, v0, Lˉʿ/ᵔᵢ;->ˈ:Ljava/lang/Object;

    iget-object v3, p0, Lˉʿ/ᵎﹶ;->ʼʼ:Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lˉʿ/ﾞᴵ;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    sget-object v6, Lˉʿ/ﾞᴵ;->ʽʽ:[Ljava/lang/Class;

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, v2, Lˉʿ/ﾞᴵ;->ᴵˊ:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Landroid/view/InflateException;

    const-string v2, "Couldn\'t resolve menu item onClick handler "

    const-string v4, " in class "

    invoke-static {v2, v3, v4}, Lˉˆ/ٴᴵ;->ˉˆ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    iget v1, p0, Lˉʿ/ᵎﹶ;->ﹳᐧ:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    instance-of v1, p1, Lᵔʾ/ﾞʻ;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lᵔʾ/ﾞʻ;

    iget v2, v1, Lᵔʾ/ﾞʻ;->ʾᵎ:I

    and-int/lit8 v2, v2, -0x5

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lᵔʾ/ﾞʻ;->ʾᵎ:I

    goto :goto_4

    :cond_5
    instance-of v1, p1, Lᵔʾ/ᵔﹳ;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lᵔʾ/ᵔﹳ;

    iget-object v2, v1, Lᵔʾ/ᵔﹳ;->ʽ:Lᵎˊ/ﹳٴ;

    :try_start_1
    iget-object v3, v1, Lᵔʾ/ᵔﹳ;->ˈ:Ljava/lang/reflect/Method;

    if-nez v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "setExclusiveCheckable"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v1, Lᵔʾ/ᵔﹳ;->ˈ:Ljava/lang/reflect/Method;

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v1, v1, Lᵔʾ/ᵔﹳ;->ˈ:Ljava/lang/reflect/Method;

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    const-string v2, "MenuItemWrapper"

    const-string v3, "Error while calling setExclusiveCheckable"

    nop

    :cond_7
    :goto_4
    iget-object v1, p0, Lˉʿ/ᵎﹶ;->ʾᵎ:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v2, Lˉʿ/ᵔᵢ;->ˑﹳ:[Ljava/lang/Class;

    iget-object v0, v0, Lˉʿ/ᵔᵢ;->ﹳٴ:[Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lˉʿ/ᵎﹶ;->ﹳٴ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v4, v5

    :cond_8
    iget v0, p0, Lˉʿ/ᵎﹶ;->ـˆ:I

    if-lez v0, :cond_a

    if-nez v4, :cond_9

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_5

    :cond_9
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    nop

    :cond_a
    :goto_5
    iget-object v0, p0, Lˉʿ/ᵎﹶ;->ᵢˏ:Lᵔʾ/ˉʿ;

    if-eqz v0, :cond_c

    instance-of v1, p1, Lᵎˊ/ﹳٴ;

    if-eqz v1, :cond_b

    move-object v1, p1

    check-cast v1, Lᵎˊ/ﹳٴ;

    invoke-interface {v1, v0}, Lᵎˊ/ﹳٴ;->ⁱˊ(Lᵔʾ/ˉʿ;)Lᵎˊ/ﹳٴ;

    goto :goto_6

    :cond_b
    const-string v0, "MenuItemCompat"

    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    nop

    :cond_c
    :goto_6
    iget-object v0, p0, Lˉʿ/ᵎﹶ;->ʾˋ:Ljava/lang/CharSequence;

    instance-of v1, p1, Lᵎˊ/ﹳٴ;

    const/16 v2, 0x1a

    if-eqz v1, :cond_d

    move-object v3, p1

    check-cast v3, Lᵎˊ/ﹳٴ;

    invoke-interface {v3, v0}, Lᵎˊ/ﹳٴ;->setContentDescription(Ljava/lang/CharSequence;)Lᵎˊ/ﹳٴ;

    goto :goto_7

    :cond_d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_e

    invoke-static {p1, v0}, Lʾﾞ/ˑﹳ;->ˆʾ(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    :cond_e
    :goto_7
    iget-object v0, p0, Lˉʿ/ᵎﹶ;->ᴵˊ:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    move-object v3, p1

    check-cast v3, Lᵎˊ/ﹳٴ;

    invoke-interface {v3, v0}, Lᵎˊ/ﹳٴ;->setTooltipText(Ljava/lang/CharSequence;)Lᵎˊ/ﹳٴ;

    goto :goto_8

    :cond_f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_10

    invoke-static {p1, v0}, Lʾﾞ/ˑﹳ;->ˉˆ(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    :cond_10
    :goto_8
    iget-char v0, p0, Lˉʿ/ᵎﹶ;->ᵔʾ:C

    iget v3, p0, Lˉʿ/ᵎﹶ;->ˉˆ:I

    if-eqz v1, :cond_11

    move-object v4, p1

    check-cast v4, Lᵎˊ/ﹳٴ;

    invoke-interface {v4, v0, v3}, Lᵎˊ/ﹳٴ;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_9

    :cond_11
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_12

    invoke-static {p1, v0, v3}, Lʾﾞ/ˑﹳ;->ᵔᵢ(Landroid/view/MenuItem;CI)V

    :cond_12
    :goto_9
    iget-char v0, p0, Lˉʿ/ᵎﹶ;->ʼᐧ:C

    iget v3, p0, Lˉʿ/ᵎﹶ;->ᵔﹳ:I

    if-eqz v1, :cond_13

    move-object v4, p1

    check-cast v4, Lᵎˊ/ﹳٴ;

    invoke-interface {v4, v0, v3}, Lᵎˊ/ﹳٴ;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_a

    :cond_13
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_14

    invoke-static {p1, v0, v3}, Lʾﾞ/ˑﹳ;->ᵔʾ(Landroid/view/MenuItem;CI)V

    :cond_14
    :goto_a
    iget-object v0, p0, Lˉʿ/ᵎﹶ;->ˈٴ:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_16

    if-eqz v1, :cond_15

    move-object v3, p1

    check-cast v3, Lᵎˊ/ﹳٴ;

    invoke-interface {v3, v0}, Lᵎˊ/ﹳٴ;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_b

    :cond_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_16

    invoke-static {p1, v0}, Lʾﾞ/ˑﹳ;->ﾞʻ(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :cond_16
    :goto_b
    iget-object v0, p0, Lˉʿ/ᵎﹶ;->ʽʽ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_18

    if-eqz v1, :cond_17

    check-cast p1, Lᵎˊ/ﹳٴ;

    invoke-interface {p1, v0}, Lᵎˊ/ﹳٴ;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_c

    :cond_17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_18

    invoke-static {p1, v0}, Lʾﾞ/ˑﹳ;->ٴﹶ(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_18
    :goto_c
    return-void
.end method

.method public final ﹳٴ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Lˉʿ/ᵎﹶ;->ᴵᵔ:Lˉʿ/ᵔᵢ;

    iget-object v0, v0, Lˉʿ/ᵔᵢ;->ʽ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot instantiate class: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    nop

    const/4 p1, 0x0

    return-object p1
.end method
