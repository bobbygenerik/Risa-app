.class public final Lˋᵔ/ᐧﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lˋᵔ/ᐧﹶ;


# instance fields
.field public final ﹳٴ:Lˋᵔ/ᵎʻ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    sget-object v0, Lˋᵔ/ٴﹳ;->יـ:Lˋᵔ/ᐧﹶ;

    sput-object v0, Lˋᵔ/ᐧﹶ;->ⁱˊ:Lˋᵔ/ᐧﹶ;

    return-void

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    sget-object v0, Lˋᵔ/ʻˋ;->ﹳᐧ:Lˋᵔ/ᐧﹶ;

    sput-object v0, Lˋᵔ/ᐧﹶ;->ⁱˊ:Lˋᵔ/ᐧﹶ;

    return-void

    :cond_1
    sget-object v0, Lˋᵔ/ᵎʻ;->ⁱˊ:Lˋᵔ/ᐧﹶ;

    sput-object v0, Lˋᵔ/ᐧﹶ;->ⁱˊ:Lˋᵔ/ᐧﹶ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˋᵔ/ᵎʻ;

    invoke-direct {v0, p0}, Lˋᵔ/ᵎʻ;-><init>(Lˋᵔ/ᐧﹶ;)V

    iput-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Lˋᵔ/ٴﹳ;

    invoke-direct {v0, p0, p1}, Lˋᵔ/ٴﹳ;-><init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    return-void

    :cond_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    new-instance v0, Lˋᵔ/ˑʼ;

    invoke-direct {v0, p0, p1}, Lˋᵔ/ˑʼ;-><init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    return-void

    :cond_1
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    new-instance v0, Lˋᵔ/ʻˋ;

    invoke-direct {v0, p0, p1}, Lˋᵔ/ʻˋ;-><init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    return-void

    :cond_2
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    new-instance v0, Lˋᵔ/ﹳﹳ;

    invoke-direct {v0, p0, p1}, Lˋᵔ/ﹳﹳ;-><init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    return-void

    :cond_3
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4

    new-instance v0, Lˋᵔ/ﹶᐧ;

    invoke-direct {v0, p0, p1}, Lˋᵔ/ﹶᐧ;-><init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    return-void

    :cond_4
    new-instance v0, Lˋᵔ/ˈˏ;

    invoke-direct {v0, p0, p1}, Lˋᵔ/ˈˏ;-><init>(Lˋᵔ/ᐧﹶ;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    return-void
.end method

.method public static ˑﹳ(Lᵎⁱ/ⁱˊ;IIII)Lᵎⁱ/ⁱˊ;
    .locals 5

    .prologue
    iget v0, p0, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lᵎⁱ/ⁱˊ;->ʽ:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lᵎⁱ/ⁱˊ;->ˈ:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p0

    return-object p0
.end method

.method public static ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;
    .locals 2

    .prologue
    new-instance v0, Lˋᵔ/ᐧﹶ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lˋᵔ/ᐧﹶ;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lˋᵔ/ˈٴ;->ﹳٴ(Landroid/view/View;)Lˋᵔ/ᐧﹶ;

    move-result-object p1

    iget-object v1, v0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v1, p1}, Lˋᵔ/ᵎʻ;->ᵔﹳ(Lˋᵔ/ᐧﹶ;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Lˋᵔ/ᵎʻ;->ˈ(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    invoke-virtual {v1, p0}, Lˋᵔ/ᵎʻ;->יـ(I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lˋᵔ/ᐧﹶ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lˋᵔ/ᐧﹶ;

    iget-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    iget-object p1, p1, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lˋᵔ/ᵎʻ;->hashCode()I

    move-result v0

    return v0
.end method

.method public final ʽ()I
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v0}, Lˋᵔ/ᵎʻ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object v0

    iget v0, v0, Lᵎⁱ/ⁱˊ;->ʽ:I

    return v0
.end method

.method public final ˈ()I
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v0}, Lˋᵔ/ᵎʻ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object v0

    iget v0, v0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    return v0
.end method

.method public final ⁱˊ()I
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v0}, Lˋᵔ/ᵎʻ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object v0

    iget v0, v0, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    return v0
.end method

.method public final ﹳٴ()I
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v0}, Lˋᵔ/ᵎʻ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object v0

    iget v0, v0, Lᵎⁱ/ⁱˊ;->ˈ:I

    return v0
.end method

.method public final ﾞᴵ()Landroid/view/WindowInsets;
    .locals 2

    .prologue
    iget-object v0, p0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    instance-of v1, v0, Lˋᵔ/ـﹶ;

    if-eqz v1, :cond_0

    check-cast v0, Lˋᵔ/ـﹶ;

    iget-object v0, v0, Lˋᵔ/ـﹶ;->ʽ:Landroid/view/WindowInsets;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
