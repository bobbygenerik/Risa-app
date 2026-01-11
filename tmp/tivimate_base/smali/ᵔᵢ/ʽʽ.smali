.class public Lᵔᵢ/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:[I

.field public static final ˈ:[I

.field public static final ˑﹳ:[I

.field public static final ᵎﹶ:[Ljava/lang/String;

.field public static final ᵔᵢ:Lיـ/ﹳᐧ;

.field public static final ⁱˊ:[Ljava/lang/Class;

.field public static final ﾞᴵ:[I


# instance fields
.field public final ﹳٴ:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const-class v2, Landroid/util/AttributeSet;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sput-object v0, Lᵔᵢ/ʽʽ;->ⁱˊ:[Ljava/lang/Class;

    const v0, 0x101026f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lᵔᵢ/ʽʽ;->ʽ:[I

    const v0, 0x1010580

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lᵔᵢ/ʽʽ;->ˈ:[I

    const v0, 0x101057c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lᵔᵢ/ʽʽ;->ˑﹳ:[I

    const v0, 0x1010574

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lᵔᵢ/ʽʽ;->ﾞᴵ:[I

    const-string v0, "android.view."

    const-string v2, "android.webkit."

    const-string v3, "android.widget."

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lᵔᵢ/ʽʽ;->ᵎﹶ:[Ljava/lang/String;

    new-instance v0, Lיـ/ﹳᐧ;

    invoke-direct {v0, v1}, Lיـ/ﹳᐧ;-><init>(I)V

    sput-object v0, Lᵔᵢ/ʽʽ;->ᵔᵢ:Lיـ/ﹳᐧ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lᵔᵢ/ʽʽ;->ﹳٴ:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ʽ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ᵔﹳ;
    .locals 2

    new-instance v0, Lˉˆ/ᵔﹳ;

    const v1, 0x7f0400e6

    invoke-direct {v0, p1, p2, v1}, Lˉˆ/ᵔﹳ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0
.end method

.method public ˈ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ᴵˊ;
    .locals 1

    new-instance v0, Lˉˆ/ᴵˊ;

    invoke-direct {v0, p1, p2}, Lˉˆ/ᴵˊ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public ˑﹳ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ᐧﾞ;
    .locals 1

    new-instance v0, Lˉˆ/ᐧﾞ;

    invoke-direct {v0, p1, p2}, Lˉˆ/ᐧﾞ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ʼᐧ;
    .locals 2

    new-instance v0, Lˉˆ/ʼᐧ;

    const v1, 0x7f0400ba

    invoke-direct {v0, p1, p2, v1}, Lˉˆ/ʼᐧ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0
.end method

.method public ﹳٴ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˉˆ/ˉˆ;
    .locals 1

    new-instance v0, Lˉˆ/ˉˆ;

    invoke-direct {v0, p1, p2}, Lˉˆ/ˉˆ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final ﾞᴵ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    sget-object v0, Lᵔᵢ/ʽʽ;->ᵔᵢ:Lיـ/ﹳᐧ;

    invoke-virtual {v0, p2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p3, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-class p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Lᵔᵢ/ʽʽ;->ⁱˊ:[Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p1, p0, Lᵔᵢ/ʽʽ;->ﹳٴ:[Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
