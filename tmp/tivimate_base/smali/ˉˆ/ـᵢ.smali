.class public final Lˉˆ/ـᵢ;
.super Lˉˆ/ʿـ;
.source "SourceFile"

# interfaces
.implements Lˉˆ/ﹳⁱ;


# static fields
.field public static final ᴵʼ:Ljava/lang/reflect/Method;


# instance fields
.field public ˏᵢ:Lᐧﹳ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lˉˆ/ـᵢ;->ᴵʼ:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    nop

    return-void
.end method


# virtual methods
.method public final ˈ(Lᵔʾ/ˆʾ;Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ـᵢ;->ˏᵢ:Lᐧﹳ/ʽ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lᐧﹳ/ʽ;->ˈ(Lᵔʾ/ˆʾ;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public final ᵔᵢ(Lᵔʾ/ˆʾ;Lᵔʾ/ﾞʻ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ـᵢ;->ˏᵢ:Lᐧﹳ/ʽ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lᐧﹳ/ʽ;->ᵔᵢ(Lᵔʾ/ˆʾ;Lᵔʾ/ﾞʻ;)V

    :cond_0
    return-void
.end method

.method public final ᵔﹳ(Landroid/content/Context;Z)Lˉˆ/ʾˊ;
    .locals 1

    new-instance v0, Lˉˆ/ﹶ;

    invoke-direct {v0, p1, p2}, Lˉˆ/ﹶ;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Lˉˆ/ﹶ;->setHoverListener(Lˉˆ/ﹳⁱ;)V

    return-object v0
.end method
