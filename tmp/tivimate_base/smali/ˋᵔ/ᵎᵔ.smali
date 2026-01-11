.class public final Lˋᵔ/ᵎᵔ;
.super Lˋᵔ/ˊᵔ;
.source "SourceFile"


# static fields
.field public static ˑﹳ:Ljava/lang/reflect/Field;

.field public static ᵎﹶ:Ljava/lang/reflect/Constructor;

.field public static ᵔᵢ:Z

.field public static ﾞᴵ:Z


# instance fields
.field public ʽ:Landroid/view/WindowInsets;

.field public ˈ:Lᵎⁱ/ⁱˊ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lˋᵔ/ˊᵔ;-><init>()V

    invoke-static {}, Lˋᵔ/ᵎᵔ;->ʼˎ()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lˋᵔ/ᵎᵔ;->ʽ:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lˋᵔ/ᐧﹶ;)V
    .locals 0

    invoke-direct {p0, p1}, Lˋᵔ/ˊᵔ;-><init>(Lˋᵔ/ᐧﹶ;)V

    invoke-virtual {p1}, Lˋᵔ/ᐧﹶ;->ﾞᴵ()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lˋᵔ/ᵎᵔ;->ʽ:Landroid/view/WindowInsets;

    return-void
.end method

.method private static ʼˎ()Landroid/view/WindowInsets;
    .locals 7

    .prologue
    sget-boolean v0, Lˋᵔ/ᵎᵔ;->ﾞᴵ:Z

    const/4 v1, 0x1

    const-class v2, Landroid/view/WindowInsets;

    const-string v3, "WindowInsetsCompat"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "CONSUMED"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lˋᵔ/ᵎᵔ;->ˑﹳ:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Could not retrieve WindowInsets.CONSUMED field"

    nop

    :goto_0
    sput-boolean v1, Lˋᵔ/ᵎᵔ;->ﾞᴵ:Z

    :cond_0
    sget-object v0, Lˋᵔ/ᵎᵔ;->ˑﹳ:Ljava/lang/reflect/Field;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    new-instance v5, Landroid/view/WindowInsets;

    invoke-direct {v5, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_1
    move-exception v0

    const-string v5, "Could not get value from WindowInsets.CONSUMED field"

    nop

    :cond_1
    sget-boolean v0, Lˋᵔ/ᵎᵔ;->ᵔᵢ:Z

    const/4 v5, 0x0

    if-nez v0, :cond_2

    :try_start_2
    new-array v0, v1, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lˋᵔ/ᵎᵔ;->ᵎﹶ:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "Could not retrieve WindowInsets(Rect) constructor"

    nop

    :goto_1
    sput-boolean v1, Lˋᵔ/ᵎᵔ;->ᵔᵢ:Z

    :cond_2
    sget-object v0, Lˋᵔ/ᵎᵔ;->ᵎﹶ:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    :try_start_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    nop

    :cond_3
    return-object v4
.end method


# virtual methods
.method public ˑﹳ(Lᵎⁱ/ⁱˊ;)V
    .locals 0

    iput-object p1, p0, Lˋᵔ/ᵎᵔ;->ˈ:Lᵎⁱ/ⁱˊ;

    return-void
.end method

.method public ᵎﹶ(Lᵎⁱ/ⁱˊ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋᵔ/ᵎᵔ;->ʽ:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    iget v1, p1, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    iget v2, p1, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    iget v3, p1, Lᵎⁱ/ⁱˊ;->ʽ:I

    iget p1, p1, Lᵎⁱ/ⁱˊ;->ˈ:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lˋᵔ/ᵎᵔ;->ʽ:Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method public ⁱˊ()Lˋᵔ/ᐧﹶ;
    .locals 3

    invoke-virtual {p0}, Lˋᵔ/ˊᵔ;->ﹳٴ()V

    iget-object v0, p0, Lˋᵔ/ᵎᵔ;->ʽ:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    move-result-object v0

    iget-object v1, p0, Lˋᵔ/ˊᵔ;->ⁱˊ:[Lᵎⁱ/ⁱˊ;

    iget-object v2, v0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v2, v1}, Lˋᵔ/ᵎʻ;->ʼᐧ([Lᵎⁱ/ⁱˊ;)V

    iget-object v1, p0, Lˋᵔ/ᵎᵔ;->ˈ:Lᵎⁱ/ⁱˊ;

    invoke-virtual {v2, v1}, Lˋᵔ/ᵎʻ;->ﹳᐧ(Lᵎⁱ/ⁱˊ;)V

    return-object v0
.end method
