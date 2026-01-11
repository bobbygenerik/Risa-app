.class public final Lᵔᵢ/ᵢˏ;
.super Lᵔᵢ/ᵔʾ;
.source "SourceFile"

# interfaces
.implements Lᵔʾ/ᵔᵢ;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final ʻʿ:Lיـ/ﹳᐧ;

.field public static final ـᵢ:Z

.field public static final ﹶ:[I


# instance fields
.field public ʻˋ:Z

.field public ʻᴵ:Z

.field public ʻᵎ:Z

.field public ʼˈ:Lᵔᵢ/ʼᐧ;

.field public ʼـ:I

.field public ʽᵔ:Z

.field public ʽⁱ:Lᵔᵢ/ـˆ;

.field public final ʾˊ:I

.field public ʾﾞ:Z

.field public ʿ:Lˋᵔ/ˋᵔ;

.field public ʿـ:Lᵔᵢ/ʽʽ;

.field public final ʿᵢ:Z

.field public ˆﾞ:Lᵔᵢ/ʻٴ;

.field public ˈʿ:Lᵔᵢ/ᵎⁱ;

.field public ˈˏ:Z

.field public ˈⁱ:Landroidx/appcompat/widget/ActionBarContextView;

.field public ˉـ:Lᵔᵢ/ˉˆ;

.field public ˊˋ:Lˉˆ/ﹶᐧ;

.field public ˊᵔ:Z

.field public ˋᵔ:Ljava/lang/CharSequence;

.field public ˎᐧ:Z

.field public ˏᵢ:Landroid/view/View;

.field public ˑ:I

.field public ˑʼ:[Lᵔᵢ/ʼʼ;

.field public ˑٴ:Lˉʿ/ᵔᵢ;

.field public י:Landroid/content/res/Configuration;

.field public יﹳ:Lᵔᵢ/ـˆ;

.field public ـˊ:Landroid/graphics/Rect;

.field public ـˏ:Lᵔᵢ/ᵔﹳ;

.field public ـᵎ:Z

.field public ـﹶ:Z

.field public final ٴʼ:Ljava/lang/Object;

.field public ٴﹳ:Lᵔᵢ/ʼʼ;

.field public final ᐧˎ:Lᵔᵢ/ˉˆ;

.field public ᐧᴵ:Landroid/widget/TextView;

.field public ᐧﹶ:Z

.field public ᐧﾞ:Landroid/view/ViewGroup;

.field public ᴵʼ:Z

.field public ᴵˑ:Landroid/widget/PopupWindow;

.field public ᵎʻ:Z

.field public ᵎʿ:Landroid/graphics/Rect;

.field public final ᵎˊ:Landroid/content/Context;

.field public ᵎᵔ:Z

.field public ᵔי:Landroid/view/Window;

.field public final ᵔٴ:Ljava/lang/Object;

.field public ⁱˉ:I

.field public ⁱי:Landroid/window/OnBackInvokedCallback;

.field public ﹳـ:Lˉʿ/ﹳٴ;

.field public ﹳⁱ:Landroid/window/OnBackInvokedDispatcher;

.field public ﹳﹳ:Z

.field public ﹶᐧ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lיـ/ﹳᐧ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lיـ/ﹳᐧ;-><init>(I)V

    sput-object v0, Lᵔᵢ/ᵢˏ;->ʻʿ:Lיـ/ﹳᐧ;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lᵔᵢ/ᵢˏ;->ﹶ:[I

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lᵔᵢ/ᵢˏ;->ـᵢ:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lᵔᵢ/ٴﹶ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lᵔᵢ/ᵢˏ;->ʿ:Lˋᵔ/ˋᵔ;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lᵔᵢ/ᵢˏ;->ʿᵢ:Z

    const/16 v1, -0x64

    iput v1, p0, Lᵔᵢ/ᵢˏ;->ʾˊ:I

    new-instance v2, Lᵔᵢ/ˉˆ;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lᵔᵢ/ˉˆ;-><init>(Lᵔᵢ/ᵢˏ;I)V

    iput-object v2, p0, Lᵔᵢ/ᵢˏ;->ᐧˎ:Lᵔᵢ/ˉˆ;

    iput-object p1, p0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    iput-object p3, p0, Lᵔᵢ/ᵢˏ;->ᵔٴ:Ljava/lang/Object;

    iput-object p4, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p3, p1, Lᵔᵢ/ˆʾ;

    if-eqz p3, :cond_0

    move-object v0, p1

    check-cast v0, Lᵔᵢ/ˆʾ;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object p1

    check-cast p1, Lᵔᵢ/ᵢˏ;

    iget p1, p1, Lᵔᵢ/ᵢˏ;->ʾˊ:I

    iput p1, p0, Lᵔᵢ/ᵢˏ;->ʾˊ:I

    :cond_2
    iget p1, p0, Lᵔᵢ/ᵢˏ;->ʾˊ:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lᵔᵢ/ᵢˏ;->ʻʿ:Lיـ/ﹳᐧ;

    invoke-virtual {p3, p1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lᵔᵢ/ᵢˏ;->ʾˊ:I

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lᵔᵢ/ᵢˏ;->ᵔʾ(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Lˉˆ/ˏי;->ˈ()V

    return-void
.end method

.method public static ʼʼ(Landroid/content/res/Configuration;)Lˆﾞ/ʽ;
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lᵔᵢ/ˏי;->ⁱˊ(Landroid/content/res/Configuration;)Lˆﾞ/ʽ;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0}, Lᵔᵢ/יـ;->ⁱˊ(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lˆﾞ/ʽ;->ⁱˊ(Ljava/lang/String;)Lˆﾞ/ʽ;

    move-result-object p0

    return-object p0
.end method

.method public static ˉˆ(Landroid/content/Context;)Lˆﾞ/ʽ;
    .locals 5

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lᵔᵢ/ᵔʾ;->ʽʽ:Lˆﾞ/ʽ;

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, v1, Lˆﾞ/ʽ;->ﹳٴ:Lˆﾞ/ˑﹳ;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lᵔᵢ/ᵢˏ;->ʼʼ(Landroid/content/res/Configuration;)Lˆﾞ/ʽ;

    move-result-object p0

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-lt v0, v2, :cond_6

    invoke-interface {v1}, Lˆﾞ/ˑﹳ;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lˆﾞ/ʽ;->ⁱˊ:Lˆﾞ/ʽ;

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_1
    invoke-interface {v1}, Lˆﾞ/ˑﹳ;->size()I

    move-result v2

    iget-object v4, p0, Lˆﾞ/ʽ;->ﹳٴ:Lˆﾞ/ˑﹳ;

    invoke-interface {v4}, Lˆﾞ/ˑﹳ;->size()I

    move-result v4

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_5

    invoke-interface {v1}, Lˆﾞ/ˑﹳ;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    invoke-interface {v1, v3}, Lˆﾞ/ˑﹳ;->get(I)Ljava/util/Locale;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lˆﾞ/ˑﹳ;->size()I

    move-result v2

    sub-int v2, v3, v2

    iget-object v4, p0, Lˆﾞ/ʽ;->ﹳٴ:Lˆﾞ/ˑﹳ;

    invoke-interface {v4, v2}, Lˆﾞ/ˑﹳ;->get(I)Ljava/util/Locale;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    invoke-static {v0}, Lˆﾞ/ʽ;->ﹳٴ([Ljava/util/Locale;)Lˆﾞ/ʽ;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Lˆﾞ/ˑﹳ;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lˆﾞ/ʽ;->ⁱˊ:Lˆﾞ/ʽ;

    goto :goto_3

    :cond_7
    invoke-interface {v1, v3}, Lˆﾞ/ˑﹳ;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lᵔᵢ/יـ;->ⁱˊ(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lˆﾞ/ʽ;->ⁱˊ(Ljava/lang/String;)Lˆﾞ/ʽ;

    move-result-object v0

    :goto_3
    iget-object v1, v0, Lˆﾞ/ʽ;->ﹳٴ:Lˆﾞ/ˑﹳ;

    invoke-interface {v1}, Lˆﾞ/ˑﹳ;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object p0

    :cond_8
    return-object v0
.end method

.method public static יـ(Landroid/content/Context;ILˆﾞ/ʽ;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p4, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_1
    const/16 p0, 0x20

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 p4, 0x0

    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p0, p3

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p2, :cond_5

    iget-object p0, p2, Lˆﾞ/ʽ;->ﹳٴ:Lˆﾞ/ˑﹳ;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x18

    if-lt p3, p4, :cond_4

    invoke-static {p1, p2}, Lᵔᵢ/ˏי;->ˈ(Landroid/content/res/Configuration;Lˆﾞ/ʽ;)V

    return-object p1

    :cond_4
    invoke-interface {p0, v1}, Lˆﾞ/ˑﹳ;->get(I)Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-interface {p0, v1}, Lˆﾞ/ˑﹳ;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    :cond_5
    return-object p1
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    .prologue
    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ʿـ:Lᵔᵢ/ʽʽ;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lᵎﹶ/ﹳٴ;->ˆʾ:[I

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v2, 0x74

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v2, :cond_0

    new-instance p1, Lᵔᵢ/ʽʽ;

    invoke-direct {p1}, Lᵔᵢ/ʽʽ;-><init>()V

    iput-object p1, p0, Lᵔᵢ/ᵢˏ;->ʿـ:Lᵔᵢ/ʽʽ;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᵔᵢ/ʽʽ;

    iput-object p1, p0, Lᵔᵢ/ᵢˏ;->ʿـ:Lᵔᵢ/ʽʽ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Falling back to default."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppCompatDelegate"

    nop

    new-instance p1, Lᵔᵢ/ʽʽ;

    invoke-direct {p1}, Lᵔᵢ/ʽʽ;-><init>()V

    iput-object p1, p0, Lᵔᵢ/ᵢˏ;->ʿـ:Lᵔᵢ/ʽʽ;

    :cond_1
    :goto_0
    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ʿـ:Lᵔᵢ/ʽʽ;

    sget v0, Lˉˆ/ᵢʻ;->ﹳٴ:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lᵎﹶ/ﹳٴ;->ʼʼ:[I

    const/4 v5, 0x0

    invoke-virtual {p3, p4, v0, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "AppCompatViewInflater"

    const-string v6, "app:theme is now deprecated. Please move to using android:theme instead."

    nop

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_4

    instance-of v0, p3, Lˉʿ/ʽ;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Lˉʿ/ʽ;

    iget v0, v0, Lˉʿ/ʽ;->ﹳٴ:I

    if-eq v0, v3, :cond_4

    :cond_3
    new-instance v0, Lˉʿ/ʽ;

    invoke-direct {v0, p3, v3}, Lˉʿ/ʽ;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move-object v0, p3

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_2
    move v2, v7

    goto/16 :goto_3

    :sswitch_0
    const-string v2, "Button"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/16 v2, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v2, "EditText"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const/16 v2, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v2, "CheckBox"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    const/16 v2, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v2, "AutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    const/16 v2, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v2, "ImageView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    const/16 v2, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v2, "ToggleButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    const/16 v2, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v2, "RadioButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    const/4 v2, 0x7

    goto :goto_3

    :sswitch_7
    const-string v2, "Spinner"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v2, 0x6

    goto :goto_3

    :sswitch_8
    const-string v2, "SeekBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    :cond_d
    const/4 v2, 0x5

    goto :goto_3

    :sswitch_9
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_2

    :sswitch_a
    const-string v2, "TextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_2

    :cond_e
    move v2, v4

    goto :goto_3

    :sswitch_b
    const-string v2, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_c
    const-string v2, "CheckedTextView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_2

    :cond_10
    move v2, v6

    goto :goto_3

    :sswitch_d
    const-string v2, "RatingBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_2

    :cond_11
    const/4 v2, 0x0

    :cond_12
    :goto_3
    packed-switch v2, :pswitch_data_0

    move-object v2, v1

    goto :goto_4

    :pswitch_0
    invoke-virtual {p1, v0, p4}, Lᵔᵢ/ʽʽ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ʼᐧ;

    move-result-object v2

    goto :goto_4

    :pswitch_1
    new-instance v2, Lˉˆ/ʻٴ;

    const v3, 0x7f040220

    invoke-direct {v2, v0, p4, v3}, Lˉˆ/ʻٴ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {p1, v0, p4}, Lᵔᵢ/ʽʽ;->ʽ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ᵔﹳ;

    move-result-object v2

    goto :goto_4

    :pswitch_3
    invoke-virtual {p1, v0, p4}, Lᵔᵢ/ʽʽ;->ﹳٴ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ˉˆ;

    move-result-object v2

    goto :goto_4

    :pswitch_4
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v2, v0, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_5
    new-instance v2, Lˉˆ/ـﹶ;

    invoke-direct {v2, v0, p4}, Lˉˆ/ـﹶ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_6
    invoke-virtual {p1, v0, p4}, Lᵔᵢ/ʽʽ;->ˈ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ᴵˊ;

    move-result-object v2

    goto :goto_4

    :pswitch_7
    new-instance v2, Lˉˆ/ˑٴ;

    invoke-direct {v2, v0, p4}, Lˉˆ/ˑٴ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_8
    new-instance v2, Lˉˆ/ᴵᵔ;

    invoke-direct {v2, v0, p4}, Lˉˆ/ᴵᵔ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_9
    new-instance v2, Lˉˆ/ʾᵎ;

    const v3, 0x7f040329

    invoke-direct {v2, v0, p4, v3}, Lˉˆ/ʾᵎ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    :pswitch_a
    invoke-virtual {p1, v0, p4}, Lᵔᵢ/ʽʽ;->ˑﹳ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ᐧﾞ;

    move-result-object v2

    goto :goto_4

    :pswitch_b
    new-instance v2, Lˉˆ/ʼʼ;

    invoke-direct {v2, v0, p4}, Lˉˆ/ʼʼ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_c
    new-instance v2, Lˉˆ/ﹳᐧ;

    invoke-direct {v2, v0, p4}, Lˉˆ/ﹳᐧ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_d
    new-instance v2, Lˉˆ/ʽʽ;

    invoke-direct {v2, v0, p4}, Lˉˆ/ʽʽ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v2, :cond_17

    if-eq p3, v0, :cond_17

    iget-object p3, p1, Lᵔᵢ/ʽʽ;->ﹳٴ:[Ljava/lang/Object;

    const-string v2, "view"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string p2, "class"

    invoke-interface {p4, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_13
    :try_start_1
    aput-object v0, p3, v5

    aput-object p4, p3, v6

    const/16 v2, 0x2e

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v7, v2, :cond_16

    move v2, v5

    :goto_5
    sget-object v3, Lᵔᵢ/ʽʽ;->ᵎﹶ:[Ljava/lang/String;

    if-ge v2, v4, :cond_15

    aget-object v3, v3, v2

    invoke-virtual {p1, v0, p2, v3}, Lᵔᵢ/ʽʽ;->ﾞᴵ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_14

    aput-object v1, p3, v5

    aput-object v1, p3, v6

    move-object v1, v3

    goto :goto_7

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :cond_15
    aput-object v1, p3, v5

    aput-object v1, p3, v6

    goto :goto_7

    :cond_16
    :try_start_2
    invoke-virtual {p1, v0, p2, v1}, Lᵔᵢ/ʽʽ;->ﾞᴵ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    aput-object v1, p3, v5

    aput-object v1, p3, v6

    move-object v1, p1

    goto :goto_7

    :goto_6
    aput-object v1, p3, v5

    aput-object v1, p3, v6

    throw p1

    :catch_0
    aput-object v1, p3, v5

    aput-object v1, p3, v6

    goto :goto_7

    :cond_17
    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_1a

    invoke-virtual {v1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_8

    :cond_18
    sget-object p2, Lᵔᵢ/ʽʽ;->ʽ:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_19

    new-instance p3, Lᵔᵢ/ᴵˊ;

    invoke-direct {p3, v1, p2}, Lᵔᵢ/ᴵˊ;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    :goto_8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-le p1, v6, :cond_1b

    goto :goto_9

    :cond_1b
    sget-object p1, Lᵔᵢ/ʽʽ;->ˈ:[I

    invoke-virtual {v0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const-class v4, Ljava/lang/Boolean;

    if-eqz p2, :cond_1c

    invoke-virtual {p1, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    sget-object p3, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    new-instance v2, Lˋᵔ/ʼʼ;

    const v3, 0x7f0b0387

    const/4 v7, 0x3

    invoke-direct/range {v2 .. v7}, Lˋᵔ/ʼʼ;-><init>(ILjava/lang/Class;III)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lˈˏ/ʽ;->ﾞᴵ(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lᵔᵢ/ʽʽ;->ˑﹳ:[I

    invoke-virtual {v0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lˋᵔ/ᵎˊ;->ᵔʾ(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lᵔᵢ/ʽʽ;->ﾞᴵ:[I

    invoke-virtual {v0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-virtual {p1, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    sget-object p3, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    new-instance v2, Lˋᵔ/ʼʼ;

    const v3, 0x7f0b038d

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lˋᵔ/ʼʼ;-><init>(ILjava/lang/Class;III)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lˈˏ/ʽ;->ﾞᴵ(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1f
    :goto_9
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lᵔᵢ/ᵢˏ;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final ʻٴ()V
    .locals 11

    .prologue
    iget-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ᵎᵔ:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    sget-object v1, Lᵎﹶ/ﹳٴ;->ˆʾ:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x75

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/16 v6, 0x6c

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p0, v7}, Lᵔᵢ/ᵢˏ;->ᵔᵢ(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v6}, Lᵔᵢ/ᵢˏ;->ᵔᵢ(I)Z

    :cond_1
    :goto_0
    const/16 v3, 0x76

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v4, 0x6d

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Lᵔᵢ/ᵢˏ;->ᵔᵢ(I)Z

    :cond_2
    const/16 v3, 0x77

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lᵔᵢ/ᵢˏ;->ᵔᵢ(I)Z

    :cond_3
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lᵔᵢ/ᵢˏ;->ﹶᐧ:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ـˆ()V

    iget-object v2, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-boolean v3, p0, Lᵔᵢ/ᵢˏ;->ﹳﹳ:Z

    const/4 v8, 0x0

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lᵔᵢ/ᵢˏ;->ﹶᐧ:Z

    if-eqz v3, :cond_4

    const v3, 0x7f0e000c

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-boolean v5, p0, Lᵔᵢ/ᵢˏ;->ـﹶ:Z

    iput-boolean v5, p0, Lᵔᵢ/ᵢˏ;->ˊᵔ:Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v2, p0, Lᵔᵢ/ᵢˏ;->ˊᵔ:Z

    if-eqz v2, :cond_8

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v9, 0x7f04000b

    invoke-virtual {v3, v9, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_5

    new-instance v3, Lˉʿ/ʽ;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, v0, v2}, Lˉʿ/ʽ;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    move-object v3, v0

    :goto_1
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0017

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0b0114

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lˉˆ/ﹶᐧ;

    iput-object v3, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    iget-object v9, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v3, v9}, Lˉˆ/ﹶᐧ;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v3, p0, Lᵔᵢ/ᵢˏ;->ـﹶ:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˆʾ(I)V

    :cond_6
    iget-boolean v3, p0, Lᵔᵢ/ᵢˏ;->ᴵʼ:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    const/4 v4, 0x2

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˆʾ(I)V

    :cond_7
    iget-boolean v3, p0, Lᵔᵢ/ᵢˏ;->ʻᵎ:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    const/4 v4, 0x5

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˆʾ(I)V

    goto :goto_2

    :cond_8
    move-object v2, v8

    goto :goto_2

    :cond_9
    iget-boolean v3, p0, Lᵔᵢ/ᵢˏ;->ˈˏ:Z

    if-eqz v3, :cond_a

    const v3, 0x7f0e0016

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v3, 0x7f0e0015

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v2, :cond_19

    new-instance v3, Lᵔᵢ/ʼᐧ;

    invoke-direct {v3, p0}, Lᵔᵢ/ʼᐧ;-><init>(Lᵔᵢ/ᵢˏ;)V

    sget-object v4, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v2, v3}, Lˋᵔ/ʽʽ;->ˆʾ(Landroid/view/View;Lˋᵔ/ˉˆ;)V

    iget-object v3, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    if-nez v3, :cond_c

    const v3, 0x7f0b03ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lᵔᵢ/ᵢˏ;->ᐧᴵ:Landroid/widget/TextView;

    :cond_c
    sget-boolean v3, Lˉˆ/ˆˎ;->ﹳٴ:Z

    const-string v3, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v4, "ViewUtils"

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "makeOptionalFitsSystemWindows"

    invoke-virtual {v9, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v9, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_3

    :catch_0
    move-exception v9

    goto :goto_4

    :catch_1
    move-exception v9

    goto :goto_5

    :cond_d
    :goto_3
    invoke-virtual {v9, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_4
    nop

    goto :goto_6

    :goto_5
    nop

    goto :goto_6

    :catch_2
    const-string v3, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    nop

    :goto_6
    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v4, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    const v9, 0x1020002

    invoke-virtual {v4, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_f

    :goto_7
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_e
    const/4 v10, -0x1

    invoke-virtual {v4, v10}, Landroid/view/View;->setId(I)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setId(I)V

    instance-of v10, v4, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_f

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v4, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v4, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v4, Lᵔᵢ/ᵔﹳ;

    invoke-direct {v4, p0}, Lᵔᵢ/ᵔﹳ;-><init>(Lᵔᵢ/ᵢˏ;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Lˉˆ/ˈˏ;)V

    iput-object v2, p0, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    iget-object v2, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_10

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_8

    :cond_10
    iget-object v2, p0, Lᵔᵢ/ᵢˏ;->ˋᵔ:Ljava/lang/CharSequence;

    :goto_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    if-eqz v3, :cond_11

    invoke-interface {v3, v2}, Lˉˆ/ﹶᐧ;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_11
    iget-object v3, p0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v3, :cond_12

    iget-object v3, v3, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast v3, Lˉˆ/ˏⁱ;

    iget-boolean v4, v3, Lˉˆ/ˏⁱ;->ᵎﹶ:Z

    if-nez v4, :cond_13

    iget-object v4, v3, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iput-object v2, v3, Lˉˆ/ˏⁱ;->ᵔᵢ:Ljava/lang/CharSequence;

    iget v8, v3, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_13

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v3, v3, Lˉˆ/ˏⁱ;->ᵎﹶ:Z

    if-eqz v3, :cond_13

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lˋᵔ/ᵎˊ;->ᵔʾ(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_12
    iget-object v3, p0, Lᵔᵢ/ᵢˏ;->ᐧᴵ:Landroid/widget/TextView;

    if-eqz v3, :cond_13

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_9
    iget-object v2, p0, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v3, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget-object v10, v2, Landroidx/appcompat/widget/ContentFrameLayout;->ٴᵢ:Landroid/graphics/Rect;

    invoke-virtual {v10, v4, v8, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_14
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v1, 0x7d

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iput-boolean v7, p0, Lᵔᵢ/ᵢˏ;->ᵎᵔ:Z

    invoke-virtual {p0, v5}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object v0

    iget-boolean v1, p0, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    if-nez v0, :cond_1b

    invoke-virtual {p0, v6}, Lᵔᵢ/ᵢˏ;->ᴵˊ(I)V

    goto :goto_a

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lᵔᵢ/ᵢˏ;->ˊᵔ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lᵔᵢ/ᵢˏ;->ـﹶ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lᵔᵢ/ᵢˏ;->ﹶᐧ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lᵔᵢ/ᵢˏ;->ˈˏ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lᵔᵢ/ᵢˏ;->ﹳﹳ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_a
    return-void
.end method

.method public final ʼˎ(I)V
    .locals 2

    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ʻٴ()V

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ˆﾞ:Lᵔᵢ/ʻٴ;

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lᵔᵢ/ʻٴ;->ﹳٴ(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final ʼᐧ(ILᵔᵢ/ʼʼ;Lᵔʾ/ˆʾ;)V
    .locals 3

    .prologue
    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ˑʼ:[Lᵔᵢ/ʼʼ;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lᵔᵢ/ʼʼ;->ˉʿ:Z

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lᵔᵢ/ᵢˏ;->ˆﾞ:Lᵔᵢ/ʻٴ;

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p2, Lᵔᵢ/ʻٴ;->ˈٴ:Z

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p2, Lᵔᵢ/ʻٴ;->ˈٴ:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v2, p2, Lᵔᵢ/ʻٴ;->ˈٴ:Z

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final ʽʽ(Landroid/content/Context;I)I
    .locals 2

    .prologue
    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lᵔᵢ/ᵢˏ;->ʽⁱ:Lᵔᵢ/ـˆ;

    if-nez p2, :cond_0

    new-instance p2, Lᵔᵢ/ـˆ;

    invoke-direct {p2, p0, p1}, Lᵔᵢ/ـˆ;-><init>(Lᵔᵢ/ᵢˏ;Landroid/content/Context;)V

    iput-object p2, p0, Lᵔᵢ/ᵢˏ;->ʽⁱ:Lᵔᵢ/ـˆ;

    :cond_0
    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ʽⁱ:Lᵔᵢ/ـˆ;

    invoke-virtual {p1}, Lᵔᵢ/ـˆ;->ᵎﹶ()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lᵔᵢ/ᵢˏ;->ʾᵎ(Landroid/content/Context;)Lיٴ/ˉʿ;

    move-result-object p1

    invoke-virtual {p1}, Lיٴ/ˉʿ;->ᵎﹶ()I

    move-result p1

    return p1

    :cond_4
    return p2

    :cond_5
    :goto_0
    return v1
.end method

.method public final ʽﹳ(I)V
    .locals 3

    .prologue
    invoke-virtual {p0, p1}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object v0

    iget-object v1, v0, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-virtual {v2, v1}, Lᵔʾ/ˆʾ;->ˏי(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lᵔᵢ/ʼʼ;->ʼᐧ:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-virtual {v1}, Lᵔʾ/ˆʾ;->ـˆ()V

    iget-object v1, v0, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-virtual {v1}, Lᵔʾ/ˆʾ;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lᵔᵢ/ʼʼ;->ˉˆ:Z

    iput-boolean v1, v0, Lᵔᵢ/ʼʼ;->ᵔʾ:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object v0

    iput-boolean p1, v0, Lᵔᵢ/ʼʼ;->ٴﹶ:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lᵔᵢ/ᵢˏ;->ٴᵢ(Lᵔᵢ/ʼʼ;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final ʾˋ()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ʻٴ()V

    iget-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ˊᵔ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Lᵔᵢ/ᵎⁱ;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lᵔᵢ/ᵢˏ;->ـﹶ:Z

    invoke-direct {v1, v0, v2}, Lᵔᵢ/ᵎⁱ;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Lᵔᵢ/ᵎⁱ;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lᵔᵢ/ᵎⁱ;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    :cond_2
    :goto_0
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lᵔᵢ/ᵢˏ;->ʻᴵ:Z

    invoke-virtual {v0, v1}, Lᵔᵢ/ᵎⁱ;->ᐧᴵ(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final ʾᵎ(Landroid/content/Context;)Lיٴ/ˉʿ;
    .locals 4

    .prologue
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->יﹳ:Lᵔᵢ/ـˆ;

    if-nez v0, :cond_1

    new-instance v0, Lᵔᵢ/ـˆ;

    sget-object v1, Lˑי/ʽ;->ˈٴ:Lˑי/ʽ;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lˑי/ʽ;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lᵔᵢ/ˊʻ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object p1, v1, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    iput-object v2, v1, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    sput-object v1, Lˑי/ʽ;->ˈٴ:Lˑי/ʽ;

    :cond_0
    sget-object p1, Lˑי/ʽ;->ˈٴ:Lˑי/ʽ;

    invoke-direct {v0, p0, p1}, Lᵔᵢ/ـˆ;-><init>(Lᵔᵢ/ᵢˏ;Lˑי/ʽ;)V

    iput-object v0, p0, Lᵔᵢ/ᵢˏ;->יﹳ:Lᵔᵢ/ـˆ;

    :cond_1
    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->יﹳ:Lᵔᵢ/ـˆ;

    return-object p1
.end method

.method public final ˆʾ(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ʻٴ()V

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ˆﾞ:Lᵔᵢ/ʻٴ;

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lᵔᵢ/ʻٴ;->ﹳٴ(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final ˈ(Lᵔʾ/ˆʾ;Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lᵔʾ/ˆʾ;->ٴﹶ()Lᵔʾ/ˆʾ;

    move-result-object p1

    iget-object v2, p0, Lᵔᵢ/ᵢˏ;->ˑʼ:[Lᵔᵢ/ʼʼ;

    if-eqz v2, :cond_0

    array-length v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    iget-object v6, v5, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    if-ne v6, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    iget p1, v5, Lᵔᵢ/ʼʼ;->ﹳٴ:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final ˈٴ()Z
    .locals 5

    .prologue
    iget-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ᵎʻ:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lᵔᵢ/ᵢˏ;->ᵎʻ:Z

    invoke-virtual {p0, v1}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object v2

    iget-boolean v3, v2, Lᵔᵢ/ʼʼ;->ˉʿ:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-nez v0, :cond_3

    invoke-virtual {p0, v2, v4}, Lᵔᵢ/ᵢˏ;->ﹳᐧ(Lᵔᵢ/ʼʼ;Z)V

    return v4

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˉʿ/ﹳٴ;->ﹳٴ()V

    return v4

    :cond_1
    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    if-eqz v0, :cond_4

    move-object v2, v0

    check-cast v2, Lˉˆ/ˏⁱ;

    iget-object v2, v2, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    if-eqz v2, :cond_4

    check-cast v0, Lˉˆ/ˏⁱ;

    iget-object v0, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lˉˆ/ٴʿ;->ᴵˊ:Lᵔʾ/ﾞʻ;

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lᵔʾ/ﾞʻ;->collapseActionView()Z

    :cond_3
    return v4

    :cond_4
    return v1
.end method

.method public final ˉʿ(ZZ)Z
    .locals 16

    .prologue
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/16 v0, -0x64

    iget v3, v1, Lᵔᵢ/ᵢˏ;->ʾˊ:I

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    sget v3, Lᵔᵢ/ᵔʾ;->ᴵˊ:I

    :goto_0
    iget-object v4, v1, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    invoke-virtual {v1, v4, v3}, Lᵔᵢ/ᵢˏ;->ʽʽ(Landroid/content/Context;I)I

    move-result v0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    const/4 v7, 0x0

    if-ge v5, v6, :cond_2

    invoke-static {v4}, Lᵔᵢ/ᵢˏ;->ˉˆ(Landroid/content/Context;)Lˆﾞ/ʽ;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    :goto_1
    if-nez p2, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Lᵔᵢ/ᵢˏ;->ʼʼ(Landroid/content/res/Configuration;)Lˆﾞ/ʽ;

    move-result-object v6

    :cond_3
    invoke-static {v4, v0, v6, v7, v2}, Lᵔᵢ/ᵢˏ;->יـ(Landroid/content/Context;ILˆﾞ/ʽ;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v8

    iget-boolean v0, v1, Lᵔᵢ/ᵢˏ;->ˎᐧ:Z

    const/16 v9, 0x18

    const/4 v10, 0x1

    iget-object v11, v1, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    if-nez v0, :cond_7

    instance-of v0, v11, Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    const/16 v12, 0x1d

    if-lt v5, v12, :cond_5

    const/high16 v5, 0x100c0000

    goto :goto_2

    :cond_5
    if-lt v5, v9, :cond_6

    const/high16 v5, 0xc0000

    goto :goto_2

    :cond_6
    move v5, v2

    :goto_2
    :try_start_0
    new-instance v12, Landroid/content/ComponentName;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-direct {v12, v4, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v12, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, v1, Lᵔᵢ/ᵢˏ;->ʼـ:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v5, "AppCompatDelegate"

    const-string v12, "Exception while getting ActivityInfo"

    nop

    iput v2, v1, Lᵔᵢ/ᵢˏ;->ʼـ:I

    :cond_7
    :goto_3
    iput-boolean v10, v1, Lᵔᵢ/ᵢˏ;->ˎᐧ:Z

    iget v0, v1, Lᵔᵢ/ᵢˏ;->ʼـ:I

    :goto_4
    iget-object v5, v1, Lᵔᵢ/ᵢˏ;->י:Landroid/content/res/Configuration;

    if-nez v5, :cond_8

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    :cond_8
    iget v12, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v12, v12, 0x30

    iget v13, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v13, v13, 0x30

    invoke-static {v5}, Lᵔᵢ/ᵢˏ;->ʼʼ(Landroid/content/res/Configuration;)Lˆﾞ/ʽ;

    move-result-object v5

    if-nez v6, :cond_9

    move-object v6, v7

    goto :goto_5

    :cond_9
    invoke-static {v8}, Lᵔᵢ/ᵢˏ;->ʼʼ(Landroid/content/res/Configuration;)Lˆﾞ/ʽ;

    move-result-object v6

    :goto_5
    if-eq v12, v13, :cond_a

    const/16 v12, 0x200

    goto :goto_6

    :cond_a
    move v12, v2

    :goto_6
    if-eqz v6, :cond_b

    invoke-virtual {v5, v6}, Lˆﾞ/ʽ;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    or-int/lit16 v12, v12, 0x2004

    :cond_b
    not-int v5, v0

    and-int/2addr v5, v12

    const/16 v14, 0x1c

    if-eqz v5, :cond_f

    if-eqz p1, :cond_f

    iget-boolean v5, v1, Lᵔᵢ/ᵢˏ;->ـᵎ:Z

    if-eqz v5, :cond_f

    sget-boolean v5, Lᵔᵢ/ᵢˏ;->ـᵢ:Z

    if-nez v5, :cond_c

    iget-boolean v5, v1, Lᵔᵢ/ᵢˏ;->ʽᵔ:Z

    if-eqz v5, :cond_f

    :cond_c
    instance-of v5, v11, Landroid/app/Activity;

    if-eqz v5, :cond_f

    move-object v5, v11

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isChild()Z

    move-result v15

    if-nez v15, :cond_f

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1f

    if-lt v15, v10, :cond_d

    and-int/lit16 v10, v12, 0x2000

    if-eqz v10, :cond_d

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_d
    if-lt v15, v14, :cond_e

    invoke-virtual {v5}, Landroid/app/Activity;->recreate()V

    goto :goto_7

    :cond_e
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Landroidx/lifecycle/ᵎⁱ;

    const/16 v15, 0x13

    invoke-direct {v10, v15, v5}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_7
    const/4 v5, 0x1

    goto :goto_8

    :cond_f
    move v5, v2

    :goto_8
    if-nez v5, :cond_21

    if-eqz v12, :cond_21

    and-int/2addr v0, v12

    if-ne v0, v12, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    move v5, v2

    :goto_9
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v10, Landroid/content/res/Configuration;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    or-int/2addr v0, v13

    iput v0, v10, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v6, :cond_12

    iget-object v0, v6, Lˆﾞ/ʽ;->ﹳٴ:Lˆﾞ/ˑﹳ;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v9, :cond_11

    invoke-static {v10, v6}, Lᵔᵢ/ˏי;->ˈ(Landroid/content/res/Configuration;Lˆﾞ/ʽ;)V

    goto :goto_a

    :cond_11
    invoke-interface {v0, v2}, Lˆﾞ/ˑﹳ;->get(I)Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-interface {v0, v2}, Lˆﾞ/ˑﹳ;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    :cond_12
    :goto_a
    invoke-virtual {v8, v10, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-ge v0, v12, :cond_1d

    if-lt v0, v14, :cond_13

    goto/16 :goto_14

    :cond_13
    const-string v12, "mDrawableCache"

    const-class v13, Landroid/content/res/Resources;

    const-string v14, "ResourcesFlusher"

    if-lt v0, v9, :cond_19

    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/י;->ˆﾞ:Z

    if-nez v0, :cond_14

    :try_start_1
    const-string v0, "mResourcesImpl"

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/י;->ᵔי:Ljava/lang/reflect/Field;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_b
    const/4 v13, 0x1

    goto :goto_c

    :catch_1
    move-exception v0

    const-string v13, "Could not retrieve Resources#mResourcesImpl field"

    nop

    goto :goto_b

    :goto_c
    sput-boolean v13, Lcom/google/android/gms/internal/play_billing/י;->ˆﾞ:Z

    :cond_14
    sget-object v0, Lcom/google/android/gms/internal/play_billing/י;->ᵔי:Ljava/lang/reflect/Field;

    if-nez v0, :cond_15

    goto/16 :goto_14

    :cond_15
    :try_start_2
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v0

    goto :goto_d

    :catch_2
    move-exception v0

    const-string v8, "Could not retrieve value from Resources#mResourcesImpl"

    nop

    move-object v8, v7

    :goto_d
    if-nez v8, :cond_16

    goto :goto_14

    :cond_16
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/י;->ٴᵢ:Z

    if-nez v0, :cond_17

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/י;->ˊʻ:Ljava/lang/reflect/Field;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_e
    const/4 v13, 0x1

    goto :goto_f

    :catch_3
    move-exception v0

    const-string v12, "Could not retrieve ResourcesImpl#mDrawableCache field"

    nop

    goto :goto_e

    :goto_f
    sput-boolean v13, Lcom/google/android/gms/internal/play_billing/י;->ٴᵢ:Z

    :cond_17
    sget-object v0, Lcom/google/android/gms/internal/play_billing/י;->ˊʻ:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_18

    :try_start_4
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_10

    :catch_4
    move-exception v0

    const-string v8, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    nop

    :cond_18
    :goto_10
    if-eqz v7, :cond_1d

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/י;->ﹳᐧ(Ljava/lang/Object;)V

    goto :goto_14

    :cond_19
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/י;->ٴᵢ:Z

    if-nez v0, :cond_1a

    :try_start_5
    invoke-virtual {v13, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/י;->ˊʻ:Ljava/lang/reflect/Field;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_11
    const/4 v13, 0x1

    goto :goto_12

    :catch_5
    move-exception v0

    const-string v12, "Could not retrieve Resources#mDrawableCache field"

    nop

    goto :goto_11

    :goto_12
    sput-boolean v13, Lcom/google/android/gms/internal/play_billing/י;->ٴᵢ:Z

    :cond_1a
    sget-object v0, Lcom/google/android/gms/internal/play_billing/י;->ˊʻ:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1b

    :try_start_6
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_13

    :catch_6
    move-exception v0

    const-string v8, "Could not retrieve value from Resources#mDrawableCache"

    nop

    :cond_1b
    :goto_13
    if-nez v7, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/י;->ﹳᐧ(Ljava/lang/Object;)V

    :cond_1d
    :goto_14
    iget v0, v1, Lᵔᵢ/ᵢˏ;->ˑ:I

    if-eqz v0, :cond_1e

    invoke-virtual {v4, v0}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v7, v1, Lᵔᵢ/ᵢˏ;->ˑ:I

    const/4 v13, 0x1

    invoke-virtual {v0, v7, v13}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_15

    :cond_1e
    const/4 v13, 0x1

    :goto_15
    if-eqz v5, :cond_20

    instance-of v0, v11, Landroid/app/Activity;

    if-eqz v0, :cond_20

    check-cast v11, Landroid/app/Activity;

    instance-of v0, v11, Landroidx/lifecycle/ʽﹳ;

    if-eqz v0, :cond_1f

    move-object v0, v11

    check-cast v0, Landroidx/lifecycle/ʽﹳ;

    invoke-interface {v0}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v0

    iget-object v0, v0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v5, Landroidx/lifecycle/ᵔʾ;->ʽʽ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v0, v5}, Landroidx/lifecycle/ᵔʾ;->ﹳٴ(Landroidx/lifecycle/ᵔʾ;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v11, v10}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_16

    :cond_1f
    iget-boolean v0, v1, Lᵔᵢ/ᵢˏ;->ʽᵔ:Z

    if-eqz v0, :cond_20

    iget-boolean v0, v1, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    if-nez v0, :cond_20

    invoke-virtual {v11, v10}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_20
    :goto_16
    move v10, v13

    goto :goto_17

    :cond_21
    move v10, v5

    :goto_17
    if-eqz v6, :cond_23

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lᵔᵢ/ᵢˏ;->ʼʼ(Landroid/content/res/Configuration;)Lˆﾞ/ʽ;

    move-result-object v0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_22

    invoke-static {v0}, Lᵔᵢ/ˏי;->ʽ(Lˆﾞ/ʽ;)V

    goto :goto_18

    :cond_22
    iget-object v0, v0, Lˆﾞ/ʽ;->ﹳٴ:Lˆﾞ/ˑﹳ;

    invoke-interface {v0, v2}, Lˆﾞ/ˑﹳ;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_23
    :goto_18
    if-nez v3, :cond_24

    invoke-virtual {v1, v4}, Lᵔᵢ/ᵢˏ;->ʾᵎ(Landroid/content/Context;)Lיٴ/ˉʿ;

    move-result-object v0

    invoke-virtual {v0}, Lיٴ/ˉʿ;->ﾞʻ()V

    goto :goto_19

    :cond_24
    iget-object v0, v1, Lᵔᵢ/ᵢˏ;->יﹳ:Lᵔᵢ/ـˆ;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lיٴ/ˉʿ;->ʽ()V

    :cond_25
    :goto_19
    const/4 v0, 0x3

    if-ne v3, v0, :cond_27

    iget-object v0, v1, Lᵔᵢ/ᵢˏ;->ʽⁱ:Lᵔᵢ/ـˆ;

    if-nez v0, :cond_26

    new-instance v0, Lᵔᵢ/ـˆ;

    invoke-direct {v0, v1, v4}, Lᵔᵢ/ـˆ;-><init>(Lᵔᵢ/ᵢˏ;Landroid/content/Context;)V

    iput-object v0, v1, Lᵔᵢ/ᵢˏ;->ʽⁱ:Lᵔᵢ/ـˆ;

    :cond_26
    iget-object v0, v1, Lᵔᵢ/ᵢˏ;->ʽⁱ:Lᵔᵢ/ـˆ;

    invoke-virtual {v0}, Lיٴ/ˉʿ;->ﾞʻ()V

    goto :goto_1a

    :cond_27
    iget-object v0, v1, Lᵔᵢ/ᵢˏ;->ʽⁱ:Lᵔᵢ/ـˆ;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lיٴ/ˉʿ;->ʽ()V

    :cond_28
    :goto_1a
    return v10
.end method

.method public final ˉٴ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ᵎᵔ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˊʻ(Lᵔᵢ/ʼʼ;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lᵔᵢ/ʼʼ;->ٴﹶ:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lᵔᵢ/ᵢˏ;->ٴᵢ(Lᵔᵢ/ʼʼ;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lᵔʾ/ˆʾ;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final ˏי(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    instance-of v1, v0, Lˋᵔ/ٴﹶ;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Lᵔᵢ/ᵔᵢ;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lˈˊ/ᵔʾ;->ʼˎ(Landroid/view/KeyEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ˆﾞ:Lᵔᵢ/ʻٴ;

    iget-object v4, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iput-boolean v2, v0, Lᵔᵢ/ʻٴ;->ʽʽ:Z

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, v0, Lᵔᵢ/ʻٴ;->ʽʽ:Z

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    iput-boolean v1, v0, Lᵔᵢ/ʻٴ;->ʽʽ:Z

    throw p1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_6

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, v1}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object v0

    iget-boolean v1, v0, Lᵔᵢ/ʼʼ;->ˉʿ:Z

    if-nez v1, :cond_11

    invoke-virtual {p0, v0, p1}, Lᵔᵢ/ᵢˏ;->ٴᵢ(Lᵔᵢ/ʼʼ;Landroid/view/KeyEvent;)Z

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lᵔᵢ/ᵢˏ;->ᵎʻ:Z

    return v1

    :cond_6
    if-eq v0, v5, :cond_10

    if-eq v0, v3, :cond_7

    goto/16 :goto_7

    :cond_7
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    if-eqz v0, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {p0, v1}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object v0

    iget-object v3, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    iget-object v4, p0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    if-eqz v3, :cond_a

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v3, Lˉˆ/ˏⁱ;

    iget-object v3, v3, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_a

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView;->ʼˈ:Z

    if-eqz v3, :cond_a

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v3, Lˉˆ/ˏⁱ;

    iget-object v3, v3, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_9

    iget-object v3, v3, Landroidx/appcompat/widget/ActionMenuView;->ـˏ:Lˉˆ/ٴﹶ;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lˉˆ/ٴﹶ;->ﾞᴵ()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    iget-object p1, p1, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_d

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->ـˏ:Lˉˆ/ٴﹶ;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lˉˆ/ٴﹶ;->ˑﹳ()Z

    move-result p1

    if-eqz p1, :cond_d

    :goto_1
    goto :goto_3

    :cond_9
    iget-boolean v3, p0, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    if-nez v3, :cond_d

    invoke-virtual {p0, v0, p1}, Lᵔᵢ/ᵢˏ;->ٴᵢ(Lᵔᵢ/ʼʼ;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    iget-object p1, p1, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_d

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->ـˏ:Lˉˆ/ٴﹶ;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lˉˆ/ٴﹶ;->ﾞʻ()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_1

    :cond_a
    iget-boolean v3, v0, Lᵔᵢ/ʼʼ;->ˉʿ:Z

    if-nez v3, :cond_e

    iget-boolean v5, v0, Lᵔᵢ/ʼʼ;->ﾞʻ:Z

    if-eqz v5, :cond_b

    goto :goto_4

    :cond_b
    iget-boolean v3, v0, Lᵔᵢ/ʼʼ;->ٴﹶ:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v0, Lᵔᵢ/ʼʼ;->ˉˆ:Z

    if-eqz v3, :cond_c

    iput-boolean v1, v0, Lᵔᵢ/ʼʼ;->ٴﹶ:Z

    invoke-virtual {p0, v0, p1}, Lᵔᵢ/ᵢˏ;->ٴᵢ(Lᵔᵢ/ʼʼ;Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    :cond_c
    move v3, v2

    :goto_2
    if-eqz v3, :cond_d

    invoke-virtual {p0, v0, p1}, Lᵔᵢ/ᵢˏ;->ᴵᵔ(Lᵔᵢ/ʼʼ;Landroid/view/KeyEvent;)V

    :goto_3
    move p1, v2

    goto :goto_5

    :cond_d
    move p1, v1

    goto :goto_5

    :cond_e
    :goto_4
    invoke-virtual {p0, v0, v2}, Lᵔᵢ/ᵢˏ;->ﹳᐧ(Lᵔᵢ/ʼʼ;Z)V

    move p1, v3

    :goto_5
    if-eqz p1, :cond_11

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return v2

    :cond_f
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    nop

    return v2

    :cond_10
    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ˈٴ()Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    :goto_6
    return v2

    :cond_12
    :goto_7
    return v1
.end method

.method public final ˑﹳ()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ـᵎ:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lᵔᵢ/ᵢˏ;->ˉʿ(ZZ)Z

    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ـˆ()V

    iget-object v1, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lˊʻ/ˈ;->ʽ(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ʻᴵ:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Lᵔᵢ/ᵎⁱ;->ᐧᴵ(Z)V

    :cond_1
    :goto_1
    sget-object v1, Lᵔᵢ/ᵔʾ;->ˉٴ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lᵔᵢ/ᵔʾ;->ᵎﹶ(Lᵔᵢ/ᵢˏ;)V

    sget-object v2, Lᵔᵢ/ᵔʾ;->ٴᵢ:Lיـ/ﾞᴵ;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lיـ/ﾞᴵ;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lᵔᵢ/ᵢˏ;->י:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ʽᵔ:Z

    return-void
.end method

.method public final ـˆ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lᵔᵢ/ᵢˏ;->ᵔʾ(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ٴᵢ(Lᵔᵢ/ʼʼ;Landroid/view/KeyEvent;)Z
    .locals 12

    .prologue
    iget-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p1, Lᵔᵢ/ʼʼ;->ٴﹶ:Z

    iget v2, p1, Lᵔᵢ/ʼʼ;->ﹳٴ:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ٴﹳ:Lᵔᵢ/ʼʼ;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lᵔᵢ/ᵢˏ;->ﹳᐧ(Lᵔᵢ/ʼʼ;Z)V

    :cond_2
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Lᵔᵢ/ʼʼ;->ᵎﹶ:Landroid/view/View;

    :cond_3
    const/16 v4, 0x6c

    if-eqz v2, :cond_5

    if-ne v2, v4, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v3

    :goto_1
    if-eqz v5, :cond_6

    iget-object v6, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    if-eqz v6, :cond_6

    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v6, Lˉˆ/ˏⁱ;

    iput-boolean v3, v6, Lˉˆ/ˏⁱ;->ﾞʻ:Z

    :cond_6
    iget-object v6, p1, Lᵔᵢ/ʼʼ;->ᵎﹶ:Landroid/view/View;

    if-nez v6, :cond_1d

    iget-object v6, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iget-boolean v8, p1, Lᵔᵢ/ʼʼ;->ˉˆ:Z

    if-eqz v8, :cond_17

    :cond_7
    if-nez v6, :cond_10

    iget-object v6, p0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    if-eqz v2, :cond_8

    if-ne v2, v4, :cond_c

    :cond_8
    iget-object v4, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f04000b

    invoke-virtual {v8, v9, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    const v10, 0x7f04000c

    if-eqz v9, :cond_9

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v11, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v9, v10, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v8, v10, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v9, v7

    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_b

    if-nez v9, :cond_a

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v9, :cond_c

    new-instance v4, Lˉʿ/ʽ;

    invoke-direct {v4, v6, v1}, Lˉʿ/ʽ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lˉʿ/ʽ;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v4

    :cond_c
    new-instance v4, Lᵔʾ/ˆʾ;

    invoke-direct {v4, v6}, Lᵔʾ/ˆʾ;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Lᵔʾ/ˆʾ;->ˑﹳ:Lᵔʾ/ᵔᵢ;

    iget-object v6, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    if-ne v4, v6, :cond_d

    goto :goto_3

    :cond_d
    if-eqz v6, :cond_e

    iget-object v8, p1, Lᵔᵢ/ʼʼ;->ʼˎ:Lᵔʾ/ﾞᴵ;

    invoke-virtual {v6, v8}, Lᵔʾ/ˆʾ;->ﹳᐧ(Lᵔʾ/ʽﹳ;)V

    :cond_e
    iput-object v4, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    iget-object v6, p1, Lᵔᵢ/ʼʼ;->ʼˎ:Lᵔʾ/ﾞᴵ;

    if-eqz v6, :cond_f

    iget-object v8, v4, Lᵔʾ/ˆʾ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v4, v6, v8}, Lᵔʾ/ˆʾ;->ⁱˊ(Lᵔʾ/ʽﹳ;Landroid/content/Context;)V

    :cond_f
    :goto_3
    iget-object v4, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    if-nez v4, :cond_10

    goto :goto_5

    :cond_10
    if-eqz v5, :cond_12

    iget-object v4, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    if-eqz v4, :cond_12

    iget-object v6, p0, Lᵔᵢ/ᵢˏ;->ʼˈ:Lᵔᵢ/ʼᐧ;

    if-nez v6, :cond_11

    new-instance v6, Lᵔᵢ/ʼᐧ;

    invoke-direct {v6, p0}, Lᵔᵢ/ʼᐧ;-><init>(Lᵔᵢ/ᵢˏ;)V

    iput-object v6, p0, Lᵔᵢ/ᵢˏ;->ʼˈ:Lᵔᵢ/ʼᐧ;

    :cond_11
    iget-object v6, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    iget-object v8, p0, Lᵔᵢ/ᵢˏ;->ʼˈ:Lᵔᵢ/ʼᐧ;

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ﾞʻ(Landroid/view/Menu;Lᵔʾ/ˏי;)V

    :cond_12
    iget-object v4, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-virtual {v4}, Lᵔʾ/ˆʾ;->ـˆ()V

    iget-object v4, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-interface {v0, v2, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object p2, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    if-nez p2, :cond_13

    goto :goto_4

    :cond_13
    if-eqz p2, :cond_14

    iget-object v0, p1, Lᵔᵢ/ʼʼ;->ʼˎ:Lᵔʾ/ﾞᴵ;

    invoke-virtual {p2, v0}, Lᵔʾ/ˆʾ;->ﹳᐧ(Lᵔʾ/ʽﹳ;)V

    :cond_14
    iput-object v7, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    :goto_4
    if-eqz v5, :cond_15

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    if-eqz p1, :cond_15

    iget-object p2, p0, Lᵔᵢ/ᵢˏ;->ʼˈ:Lᵔᵢ/ʼᐧ;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v7, p2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ﾞʻ(Landroid/view/Menu;Lᵔʾ/ˏי;)V

    :cond_15
    :goto_5
    return v1

    :cond_16
    iput-boolean v1, p1, Lᵔᵢ/ʼʼ;->ˉˆ:Z

    :cond_17
    iget-object v2, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-virtual {v2}, Lᵔʾ/ˆʾ;->ـˆ()V

    iget-object v2, p1, Lᵔᵢ/ʼʼ;->ʼᐧ:Landroid/os/Bundle;

    if-eqz v2, :cond_18

    iget-object v4, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-virtual {v4, v2}, Lᵔʾ/ˆʾ;->יـ(Landroid/os/Bundle;)V

    iput-object v7, p1, Lᵔᵢ/ʼʼ;->ʼᐧ:Landroid/os/Bundle;

    :cond_18
    iget-object v2, p1, Lᵔᵢ/ʼʼ;->ᵎﹶ:Landroid/view/View;

    iget-object v4, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-interface {v0, v1, v2, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz v5, :cond_19

    iget-object p2, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    if-eqz p2, :cond_19

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ʼˈ:Lᵔᵢ/ʼᐧ;

    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, v7, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ﾞʻ(Landroid/view/Menu;Lᵔʾ/ˏי;)V

    :cond_19
    iget-object p1, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-virtual {p1}, Lᵔʾ/ˆʾ;->ʻٴ()V

    return v1

    :cond_1a
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_6

    :cond_1b
    const/4 p2, -0x1

    :goto_6
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v3, :cond_1c

    move p2, v3

    goto :goto_7

    :cond_1c
    move p2, v1

    :goto_7
    iget-object v0, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0, p2}, Lᵔʾ/ˆʾ;->setQwertyMode(Z)V

    iget-object p2, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-virtual {p2}, Lᵔʾ/ˆʾ;->ʻٴ()V

    :cond_1d
    iput-boolean v3, p1, Lᵔᵢ/ʼʼ;->ٴﹶ:Z

    iput-boolean v1, p1, Lᵔᵢ/ʼʼ;->ﾞʻ:Z

    iput-object p1, p0, Lᵔᵢ/ᵢˏ;->ٴﹳ:Lᵔᵢ/ʼʼ;

    return v3
.end method

.method public final ٴﹶ(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ʻٴ()V

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᐧﾞ:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ˆﾞ:Lᵔᵢ/ʻٴ;

    iget-object p2, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lᵔᵢ/ʻٴ;->ﹳٴ(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final ᴵˊ(I)V
    .locals 2

    .prologue
    iget v0, p0, Lᵔᵢ/ᵢˏ;->ⁱˉ:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lᵔᵢ/ᵢˏ;->ⁱˉ:I

    iget-boolean p1, p0, Lᵔᵢ/ᵢˏ;->ʾﾞ:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᐧˎ:Lᵔᵢ/ˉˆ;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lᵔᵢ/ᵢˏ;->ʾﾞ:Z

    :cond_0
    return-void
.end method

.method public final ᴵᵔ(Lᵔᵢ/ʼʼ;Landroid/view/KeyEvent;)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lᵔᵢ/ʼʼ;->ˉʿ:Z

    iget v3, v1, Lᵔᵢ/ʼʼ;->ﹳٴ:I

    if-nez v2, :cond_1a

    iget-boolean v2, v0, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v4, v0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v6, v1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-interface {v4, v3, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1, v5}, Lᵔᵢ/ᵢˏ;->ﹳᐧ(Lᵔᵢ/ʼʼ;Z)V

    return-void

    :cond_2
    const-string v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-nez v4, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-virtual/range {p0 .. p2}, Lᵔᵢ/ᵢˏ;->ٴᵢ(Lᵔᵢ/ʼʼ;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-object v6, v1, Lᵔᵢ/ʼʼ;->ˑﹳ:Lᵔᵢ/ʾᵎ;

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v6, :cond_6

    iget-boolean v9, v1, Lᵔᵢ/ʼʼ;->ᵔʾ:Z

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ᵎﹶ:Landroid/view/View;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_18

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_18

    move v10, v6

    goto/16 :goto_7

    :cond_6
    :goto_0
    if-nez v6, :cond_b

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ʾˋ()V

    iget-object v6, v0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lᵔᵢ/ᵎⁱ;->ᵎᵔ()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move-object v2, v6

    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v10, 0x7f040004

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_9

    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_9
    const v10, 0x7f0404b5

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_a
    const v6, 0x7f140310

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v6, Lˉʿ/ʽ;

    invoke-direct {v6, v2, v7}, Lˉʿ/ʽ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Lˉʿ/ʽ;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v6, v1, Lᵔᵢ/ʼʼ;->ˆʾ:Lˉʿ/ʽ;

    sget-object v2, Lᵎﹶ/ﹳٴ;->ˆʾ:[I

    invoke-virtual {v6, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v6, 0x56

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Lᵔᵢ/ʼʼ;->ⁱˊ:I

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Lᵔᵢ/ʼʼ;->ˈ:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Lᵔᵢ/ʾᵎ;

    iget-object v6, v1, Lᵔᵢ/ʼʼ;->ˆʾ:Lˉʿ/ʽ;

    invoke-direct {v2, v0, v6}, Lᵔᵢ/ʾᵎ;-><init>(Lᵔᵢ/ᵢˏ;Lˉʿ/ʽ;)V

    iput-object v2, v1, Lᵔᵢ/ʼʼ;->ˑﹳ:Lᵔᵢ/ʾᵎ;

    const/16 v2, 0x51

    iput v2, v1, Lᵔᵢ/ʼʼ;->ʽ:I

    goto :goto_4

    :cond_b
    iget-boolean v2, v1, Lᵔᵢ/ʼʼ;->ᵔʾ:Z

    if-eqz v2, :cond_c

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ˑﹳ:Lᵔᵢ/ʾᵎ;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_c
    :goto_4
    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ᵎﹶ:Landroid/view/View;

    if-eqz v2, :cond_d

    iput-object v2, v1, Lᵔᵢ/ʼʼ;->ﾞᴵ:Landroid/view/View;

    goto :goto_5

    :cond_d
    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    if-nez v2, :cond_e

    goto/16 :goto_8

    :cond_e
    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ـˏ:Lᵔᵢ/ᵔﹳ;

    if-nez v2, :cond_f

    new-instance v2, Lᵔᵢ/ᵔﹳ;

    invoke-direct {v2, v0}, Lᵔᵢ/ᵔﹳ;-><init>(Lᵔᵢ/ᵢˏ;)V

    iput-object v2, v0, Lᵔᵢ/ᵢˏ;->ـˏ:Lᵔᵢ/ᵔﹳ;

    :cond_f
    iget-object v2, v0, Lᵔᵢ/ᵢˏ;->ـˏ:Lᵔᵢ/ᵔﹳ;

    iget-object v6, v1, Lᵔᵢ/ʼʼ;->ʼˎ:Lᵔʾ/ﾞᴵ;

    if-nez v6, :cond_10

    new-instance v6, Lᵔʾ/ﾞᴵ;

    iget-object v9, v1, Lᵔᵢ/ʼʼ;->ˆʾ:Lˉʿ/ʽ;

    invoke-direct {v6, v9}, Lᵔʾ/ﾞᴵ;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lᵔᵢ/ʼʼ;->ʼˎ:Lᵔʾ/ﾞᴵ;

    iput-object v2, v6, Lᵔʾ/ﾞᴵ;->ᴵᵔ:Lᵔʾ/ˏי;

    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    iget-object v9, v2, Lᵔʾ/ˆʾ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v2, v6, v9}, Lᵔʾ/ˆʾ;->ⁱˊ(Lᵔʾ/ʽﹳ;Landroid/content/Context;)V

    :cond_10
    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ʼˎ:Lᵔʾ/ﾞᴵ;

    iget-object v6, v1, Lᵔᵢ/ʼʼ;->ˑﹳ:Lᵔᵢ/ʾᵎ;

    iget-object v9, v2, Lᵔʾ/ﾞᴵ;->ˈٴ:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v9, :cond_12

    iget-object v9, v2, Lᵔʾ/ﾞᴵ;->ᴵˊ:Landroid/view/LayoutInflater;

    const v10, 0x7f0e000d

    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v6, v2, Lᵔʾ/ﾞᴵ;->ˈٴ:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v6, v2, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    if-nez v6, :cond_11

    new-instance v6, Lᵔʾ/ˑﹳ;

    invoke-direct {v6, v2}, Lᵔʾ/ˑﹳ;-><init>(Lᵔʾ/ﾞᴵ;)V

    iput-object v6, v2, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    :cond_11
    iget-object v6, v2, Lᵔʾ/ﾞᴵ;->ˈٴ:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v9, v2, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, v2, Lᵔʾ/ﾞᴵ;->ˈٴ:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v6, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    iget-object v2, v2, Lᵔʾ/ﾞᴵ;->ˈٴ:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v2, v1, Lᵔᵢ/ʼʼ;->ﾞᴵ:Landroid/view/View;

    if-eqz v2, :cond_19

    :goto_5
    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ﾞᴵ:Landroid/view/View;

    if-nez v2, :cond_13

    goto/16 :goto_8

    :cond_13
    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ᵎﹶ:Landroid/view/View;

    if-eqz v2, :cond_14

    goto :goto_6

    :cond_14
    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ʼˎ:Lᵔʾ/ﾞᴵ;

    iget-object v6, v2, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    if-nez v6, :cond_15

    new-instance v6, Lᵔʾ/ˑﹳ;

    invoke-direct {v6, v2}, Lᵔʾ/ˑﹳ;-><init>(Lᵔʾ/ﾞᴵ;)V

    iput-object v6, v2, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    :cond_15
    iget-object v2, v2, Lᵔʾ/ﾞᴵ;->ˊʻ:Lᵔʾ/ˑﹳ;

    invoke-virtual {v2}, Lᵔʾ/ˑﹳ;->getCount()I

    move-result v2

    if-lez v2, :cond_19

    :goto_6
    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ﾞᴵ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_16

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_16
    iget v6, v1, Lᵔᵢ/ʼʼ;->ⁱˊ:I

    iget-object v9, v1, Lᵔᵢ/ʼʼ;->ˑﹳ:Lᵔᵢ/ʾᵎ;

    invoke-virtual {v9, v6}, Lᵔᵢ/ʾᵎ;->setBackgroundResource(I)V

    iget-object v6, v1, Lᵔᵢ/ʼʼ;->ﾞᴵ:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v9, v6, Landroid/view/ViewGroup;

    if-eqz v9, :cond_17

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v9, v1, Lᵔᵢ/ʼʼ;->ﾞᴵ:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v6, v1, Lᵔᵢ/ʼʼ;->ˑﹳ:Lᵔᵢ/ʾᵎ;

    iget-object v9, v1, Lᵔᵢ/ʼʼ;->ﾞᴵ:Landroid/view/View;

    invoke-virtual {v6, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ﾞᴵ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ﾞᴵ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_18
    move v10, v8

    :goto_7
    iput-boolean v7, v1, Lᵔᵢ/ʼʼ;->ﾞʻ:Z

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/high16 v15, 0x820000

    const/16 v16, -0x3

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3ea

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, v1, Lᵔᵢ/ʼʼ;->ʽ:I

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v1, Lᵔᵢ/ʼʼ;->ˈ:I

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, v1, Lᵔᵢ/ʼʼ;->ˑﹳ:Lᵔᵢ/ʾᵎ;

    invoke-interface {v4, v2, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, v1, Lᵔᵢ/ʼʼ;->ˉʿ:Z

    if-nez v3, :cond_1a

    invoke-virtual {v0}, Lᵔᵢ/ᵢˏ;->ᵎⁱ()V

    return-void

    :cond_19
    :goto_8
    iput-boolean v5, v1, Lᵔᵢ/ʼʼ;->ᵔʾ:Z

    :cond_1a
    :goto_9
    return-void
.end method

.method public final ᵎⁱ()V
    .locals 3

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ﹳⁱ:Landroid/window/OnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object v0

    iget-boolean v0, v0, Lᵔᵢ/ʼʼ;->ˉʿ:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ﹳـ:Lˉʿ/ﹳٴ;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ⁱי:Landroid/window/OnBackInvokedCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ﹳⁱ:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v0, p0}, Lᵔᵢ/ʽﹳ;->ⁱˊ(Ljava/lang/Object;Lᵔᵢ/ᵢˏ;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Lᵔᵢ/ᵢˏ;->ⁱי:Landroid/window/OnBackInvokedCallback;

    return-void

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ⁱי:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lᵔᵢ/ᵢˏ;->ﹳⁱ:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v1, v0}, Lᵔᵢ/ʽﹳ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lᵔᵢ/ᵢˏ;->ⁱי:Landroid/window/OnBackInvokedCallback;

    :cond_4
    return-void
.end method

.method public final ᵔʾ(Landroid/view/Window;)V
    .locals 7

    .prologue
    const-string v0, "AppCompat has already installed itself into the Window"

    iget-object v1, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    instance-of v2, v1, Lᵔᵢ/ʻٴ;

    if-nez v2, :cond_5

    new-instance v0, Lᵔᵢ/ʻٴ;

    invoke-direct {v0, p0, v1}, Lᵔᵢ/ʻٴ;-><init>(Lᵔᵢ/ᵢˏ;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lᵔᵢ/ᵢˏ;->ˆﾞ:Lᵔᵢ/ʻٴ;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    sget-object v1, Lᵔᵢ/ᵢˏ;->ﹶ:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lˉˆ/ˏי;->ﹳٴ()Lˉˆ/ˏי;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Lˉˆ/ˏי;->ﹳٴ:Lˉˆ/ʼᵢ;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v3, v6}, Lˉˆ/ʼᵢ;->ᵎﹶ(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ﹳⁱ:Landroid/window/OnBackInvokedDispatcher;

    if-nez p1, :cond_4

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lᵔᵢ/ᵢˏ;->ⁱי:Landroid/window/OnBackInvokedCallback;

    if-eqz v1, :cond_2

    invoke-static {p1, v1}, Lᵔᵢ/ʽﹳ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lᵔᵢ/ᵢˏ;->ⁱי:Landroid/window/OnBackInvokedCallback;

    :cond_2
    instance-of p1, v0, Landroid/app/Activity;

    if-eqz p1, :cond_3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lᵔᵢ/ʽﹳ;->ﹳٴ(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Lᵔᵢ/ᵢˏ;->ﹳⁱ:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lᵔᵢ/ᵢˏ;->ﹳⁱ:Landroid/window/OnBackInvokedDispatcher;

    :goto_1
    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ᵎⁱ()V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔᵢ(I)Z
    .locals 5

    .prologue
    const/16 v0, 0x8

    const/16 v1, 0x6d

    const/16 v2, 0x6c

    const-string v3, "AppCompatDelegate"

    if-ne p1, v0, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    nop

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    nop

    move p1, v1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ﹳﹳ:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_2

    return v3

    :cond_2
    iget-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ˊᵔ:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v3, p0, Lᵔᵢ/ᵢˏ;->ˊᵔ:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ˉٴ()V

    iput-boolean v4, p0, Lᵔᵢ/ᵢˏ;->ـﹶ:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ˉٴ()V

    iput-boolean v4, p0, Lᵔᵢ/ᵢˏ;->ˊᵔ:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ˉٴ()V

    iput-boolean v4, p0, Lᵔᵢ/ᵢˏ;->ˈˏ:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ˉٴ()V

    iput-boolean v4, p0, Lᵔᵢ/ᵢˏ;->ʻᵎ:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ˉٴ()V

    iput-boolean v4, p0, Lᵔᵢ/ᵢˏ;->ᴵʼ:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ˉٴ()V

    iput-boolean v4, p0, Lᵔᵢ/ᵢˏ;->ﹳﹳ:Z

    return v4
.end method

.method public final ᵔﹳ(Lᵔʾ/ˆʾ;)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ʻˋ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ʻˋ:Z

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    iget-object v0, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->ـˏ:Lˉˆ/ٴﹶ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˉˆ/ٴﹶ;->ˑﹳ()Z

    iget-object v0, v0, Lˉˆ/ٴﹶ;->ـˏ:Lˉˆ/ﾞᴵ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lᵔʾ/יـ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lᵔʾ/יـ;->ˆʾ:Lᵔʾ/ﹳᐧ;

    invoke-interface {v0}, Lᵔʾ/ʼʼ;->dismiss()V

    :cond_1
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    if-nez v1, :cond_2

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lᵔᵢ/ᵢˏ;->ʻˋ:Z

    return-void
.end method

.method public final ᵢˏ(I)Lᵔᵢ/ʼʼ;
    .locals 4

    .prologue
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ˑʼ:[Lᵔᵢ/ʼʼ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p1, :cond_2

    :cond_0
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Lᵔᵢ/ʼʼ;

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lᵔᵢ/ᵢˏ;->ˑʼ:[Lᵔᵢ/ʼʼ;

    move-object v0, v2

    :cond_2
    aget-object v2, v0, p1

    if-nez v2, :cond_3

    new-instance v2, Lᵔᵢ/ʼʼ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput p1, v2, Lᵔᵢ/ʼʼ;->ﹳٴ:I

    iput-boolean v1, v2, Lᵔᵢ/ʼʼ;->ᵔʾ:Z

    aput-object v2, v0, p1

    :cond_3
    return-object v2
.end method

.method public final ⁱˊ(Lᵔʾ/ˆʾ;)V
    .locals 5

    .prologue
    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    iget-object p1, p1, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->ʼˈ:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    iget-object p1, p1, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_5

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->ـˏ:Lˉˆ/ٴﹶ;

    if-eqz p1, :cond_5

    iget-object v2, p1, Lˉˆ/ٴﹶ;->ﹳـ:Lˉˆ/ᵔᵢ;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lˉˆ/ٴﹶ;->ﾞᴵ()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v2, Lˉˆ/ˏⁱ;

    iget-object v2, v2, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    const/16 v3, 0x6c

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->ـˏ:Lˉˆ/ٴﹶ;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lˉˆ/ٴﹶ;->ﾞᴵ()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    iget-object v0, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->ـˏ:Lˉˆ/ٴﹶ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˉˆ/ٴﹶ;->ˑﹳ()Z

    move-result v0

    :cond_1
    iget-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object v0

    iget-object v0, v0, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_2
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lᵔᵢ/ᵢˏ;->ʾﾞ:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lᵔᵢ/ᵢˏ;->ⁱˉ:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lᵔᵢ/ᵢˏ;->ᐧˎ:Lᵔᵢ/ˉˆ;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Lᵔᵢ/ˉˆ;->run()V

    :cond_3
    invoke-virtual {p0, v1}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object v0

    iget-object v2, v0, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Lᵔᵢ/ʼʼ;->ˉˆ:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Lᵔᵢ/ʼʼ;->ᵎﹶ:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    iget-object p1, p1, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->ـˏ:Lˉˆ/ٴﹶ;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lˉˆ/ٴﹶ;->ﾞʻ()Z

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, v1}, Lᵔᵢ/ᵢˏ;->ᵢˏ(I)Lᵔᵢ/ʼʼ;

    move-result-object p1

    iput-boolean v0, p1, Lᵔᵢ/ʼʼ;->ᵔʾ:Z

    invoke-virtual {p0, p1, v1}, Lᵔᵢ/ᵢˏ;->ﹳᐧ(Lᵔᵢ/ʼʼ;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lᵔᵢ/ᵢˏ;->ᴵᵔ(Lᵔᵢ/ʼʼ;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Lᵔᵢ/ᵢˏ;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    nop

    :cond_1
    return-void
.end method

.method public final ﹳᐧ(Lᵔᵢ/ʼʼ;Z)V
    .locals 3

    .prologue
    if-eqz p2, :cond_0

    iget v0, p1, Lᵔᵢ/ʼʼ;->ﹳٴ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    iget-object v0, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->ـˏ:Lˉˆ/ٴﹶ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˉˆ/ٴﹶ;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lᵔᵢ/ʼʼ;->ᵔᵢ:Lᵔʾ/ˆʾ;

    invoke-virtual {p0, p1}, Lᵔᵢ/ᵢˏ;->ᵔﹳ(Lᵔʾ/ˆʾ;)V

    return-void

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵎˊ:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lᵔᵢ/ʼʼ;->ˉʿ:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lᵔᵢ/ʼʼ;->ˑﹳ:Lᵔᵢ/ʾᵎ;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Lᵔᵢ/ʼʼ;->ﹳٴ:I

    invoke-virtual {p0, p2, p1, v1}, Lᵔᵢ/ᵢˏ;->ʼᐧ(ILᵔᵢ/ʼʼ;Lᵔʾ/ˆʾ;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Lᵔᵢ/ʼʼ;->ٴﹶ:Z

    iput-boolean p2, p1, Lᵔᵢ/ʼʼ;->ﾞʻ:Z

    iput-boolean p2, p1, Lᵔᵢ/ʼʼ;->ˉʿ:Z

    iput-object v1, p1, Lᵔᵢ/ʼʼ;->ﾞᴵ:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lᵔᵢ/ʼʼ;->ᵔʾ:Z

    iget-object p2, p0, Lᵔᵢ/ᵢˏ;->ٴﹳ:Lᵔᵢ/ʼʼ;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Lᵔᵢ/ᵢˏ;->ٴﹳ:Lᵔᵢ/ʼʼ;

    :cond_2
    iget p1, p1, Lᵔᵢ/ʼʼ;->ﹳٴ:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lᵔᵢ/ᵢˏ;->ᵎⁱ()V

    :cond_3
    return-void
.end method

.method public final ﾞʻ(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    iput-object p1, p0, Lᵔᵢ/ᵢˏ;->ˋᵔ:Ljava/lang/CharSequence;

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ˊˋ:Lˉˆ/ﹶᐧ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lˉˆ/ﹶᐧ;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ˈʿ:Lᵔᵢ/ᵎⁱ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    iget-boolean v1, v0, Lˉˆ/ˏⁱ;->ᵎﹶ:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iput-object p1, v0, Lˉˆ/ˏⁱ;->ᵔᵢ:Ljava/lang/CharSequence;

    iget v2, v0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, v0, Lˉˆ/ˏⁱ;->ᵎﹶ:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lˋᵔ/ᵎˊ;->ᵔʾ(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᐧᴵ:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final ﾞᴵ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lᵔᵢ/ᵔʾ;->ˉٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lᵔᵢ/ᵔʾ;->ᵎﹶ(Lᵔᵢ/ᵢˏ;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ʾﾞ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ᵔי:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lᵔᵢ/ᵢˏ;->ᐧˎ:Lᵔᵢ/ˉˆ;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔᵢ/ᵢˏ;->ᐧﹶ:Z

    iget v0, p0, Lᵔᵢ/ᵢˏ;->ʾˊ:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lᵔᵢ/ᵢˏ;->ʻʿ:Lיـ/ﹳᐧ;

    iget-object v1, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lᵔᵢ/ᵢˏ;->ʾˊ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lᵔᵢ/ᵢˏ;->ʻʿ:Lיـ/ﹳᐧ;

    iget-object v1, p0, Lᵔᵢ/ᵢˏ;->ٴʼ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->יﹳ:Lᵔᵢ/ـˆ;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lיٴ/ˉʿ;->ʽ()V

    :cond_3
    iget-object v0, p0, Lᵔᵢ/ᵢˏ;->ʽⁱ:Lᵔᵢ/ـˆ;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lיٴ/ˉʿ;->ʽ()V

    :cond_4
    return-void
.end method
