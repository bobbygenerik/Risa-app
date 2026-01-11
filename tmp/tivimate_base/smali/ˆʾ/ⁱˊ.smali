.class public final Lˆʾ/ⁱˊ;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public ʻٴ:Z

.field public ʼʼ:I

.field public ʼˎ:Z

.field public ʼᐧ:I

.field public ʽ:I

.field public ʽʽ:Z

.field public ʽﹳ:Z

.field public ʾˋ:Z

.field public ʾᵎ:I

.field public ˆʾ:Z

.field public ˈ:I

.field public ˈٴ:Landroid/content/res/ColorStateList;

.field public ˉʿ:Z

.field public ˉˆ:I

.field public ˉٴ:[[I

.field public ˊʻ:Z

.field public ˏי:Z

.field public ˑﹳ:I

.field public יـ:I

.field public ـˆ:Z

.field public ٴʼ:Lיـ/יـ;

.field public ٴᵢ:Z

.field public ٴﹶ:Landroid/graphics/Rect;

.field public ᴵˊ:Landroid/graphics/ColorFilter;

.field public ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

.field public ᵎⁱ:Lיـ/ʼˎ;

.field public ᵎﹶ:[Landroid/graphics/drawable/Drawable;

.field public ᵔʾ:I

.field public ᵔᵢ:I

.field public ᵔﹳ:I

.field public ᵢˏ:I

.field public ⁱˊ:Landroid/content/res/Resources;

.field public final ﹳٴ:Lˆʾ/ˑﹳ;

.field public ﹳᐧ:Z

.field public ﾞʻ:Z

.field public ﾞᴵ:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lˆʾ/ⁱˊ;Lˆʾ/ˑﹳ;Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˆʾ/ⁱˊ;->ʼˎ:Z

    iput-boolean v0, p0, Lˆʾ/ⁱˊ;->ﾞʻ:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lˆʾ/ⁱˊ;->ـˆ:Z

    iput v0, p0, Lˆʾ/ⁱˊ;->ʼʼ:I

    iput v0, p0, Lˆʾ/ⁱˊ;->ᵢˏ:I

    iput-object p2, p0, Lˆʾ/ⁱˊ;->ﹳٴ:Lˆʾ/ˑﹳ;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p1, Lˆʾ/ⁱˊ;->ⁱˊ:Landroid/content/res/Resources;

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_0
    iput-object v2, p0, Lˆʾ/ⁱˊ;->ⁱˊ:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    iget v2, p1, Lˆʾ/ⁱˊ;->ʽ:I

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    sget v3, Lˆʾ/ˑﹳ;->ـˏ:I

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_2
    if-nez v2, :cond_4

    const/16 v2, 0xa0

    :cond_4
    iput v2, p0, Lˆʾ/ⁱˊ;->ʽ:I

    if-eqz p1, :cond_d

    iget p3, p1, Lˆʾ/ⁱˊ;->ˈ:I

    iput p3, p0, Lˆʾ/ⁱˊ;->ˈ:I

    iget p3, p1, Lˆʾ/ⁱˊ;->ˑﹳ:I

    iput p3, p0, Lˆʾ/ⁱˊ;->ˑﹳ:I

    iput-boolean v1, p0, Lˆʾ/ⁱˊ;->ʽﹳ:Z

    iput-boolean v1, p0, Lˆʾ/ⁱˊ;->ʻٴ:Z

    iget-boolean p3, p1, Lˆʾ/ⁱˊ;->ʼˎ:Z

    iput-boolean p3, p0, Lˆʾ/ⁱˊ;->ʼˎ:Z

    iget-boolean p3, p1, Lˆʾ/ⁱˊ;->ﾞʻ:Z

    iput-boolean p3, p0, Lˆʾ/ⁱˊ;->ﾞʻ:Z

    iget-boolean p3, p1, Lˆʾ/ⁱˊ;->ـˆ:Z

    iput-boolean p3, p0, Lˆʾ/ⁱˊ;->ـˆ:Z

    iget p3, p1, Lˆʾ/ⁱˊ;->ʾᵎ:I

    iput p3, p0, Lˆʾ/ⁱˊ;->ʾᵎ:I

    iget p3, p1, Lˆʾ/ⁱˊ;->ʼʼ:I

    iput p3, p0, Lˆʾ/ⁱˊ;->ʼʼ:I

    iget p3, p1, Lˆʾ/ⁱˊ;->ᵢˏ:I

    iput p3, p0, Lˆʾ/ⁱˊ;->ᵢˏ:I

    iget-boolean p3, p1, Lˆʾ/ⁱˊ;->ʾˋ:Z

    iput-boolean p3, p0, Lˆʾ/ⁱˊ;->ʾˋ:Z

    iget-object p3, p1, Lˆʾ/ⁱˊ;->ᴵˊ:Landroid/graphics/ColorFilter;

    iput-object p3, p0, Lˆʾ/ⁱˊ;->ᴵˊ:Landroid/graphics/ColorFilter;

    iget-boolean p3, p1, Lˆʾ/ⁱˊ;->ʽʽ:Z

    iput-boolean p3, p0, Lˆʾ/ⁱˊ;->ʽʽ:Z

    iget-object p3, p1, Lˆʾ/ⁱˊ;->ˈٴ:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lˆʾ/ⁱˊ;->ˈٴ:Landroid/content/res/ColorStateList;

    iget-object p3, p1, Lˆʾ/ⁱˊ;->ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

    iput-object p3, p0, Lˆʾ/ⁱˊ;->ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p3, p1, Lˆʾ/ⁱˊ;->ˊʻ:Z

    iput-boolean p3, p0, Lˆʾ/ⁱˊ;->ˊʻ:Z

    iget-boolean p3, p1, Lˆʾ/ⁱˊ;->ٴᵢ:Z

    iput-boolean p3, p0, Lˆʾ/ⁱˊ;->ٴᵢ:Z

    iget p3, p1, Lˆʾ/ⁱˊ;->ʽ:I

    if-ne p3, v2, :cond_7

    iget-boolean p3, p1, Lˆʾ/ⁱˊ;->ˆʾ:Z

    if-eqz p3, :cond_6

    iget-object p3, p1, Lˆʾ/ⁱˊ;->ٴﹶ:Landroid/graphics/Rect;

    if-eqz p3, :cond_5

    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, Lˆʾ/ⁱˊ;->ٴﹶ:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_5
    iput-object p2, p0, Lˆʾ/ⁱˊ;->ٴﹶ:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lˆʾ/ⁱˊ;->ˆʾ:Z

    :cond_6
    iget-boolean p2, p1, Lˆʾ/ⁱˊ;->ˉʿ:Z

    if-eqz p2, :cond_7

    iget p2, p1, Lˆʾ/ⁱˊ;->ᵔʾ:I

    iput p2, p0, Lˆʾ/ⁱˊ;->ᵔʾ:I

    iget p2, p1, Lˆʾ/ⁱˊ;->ˉˆ:I

    iput p2, p0, Lˆʾ/ⁱˊ;->ˉˆ:I

    iget p2, p1, Lˆʾ/ⁱˊ;->ʼᐧ:I

    iput p2, p0, Lˆʾ/ⁱˊ;->ʼᐧ:I

    iget p2, p1, Lˆʾ/ⁱˊ;->ᵔﹳ:I

    iput p2, p0, Lˆʾ/ⁱˊ;->ᵔﹳ:I

    iput-boolean v1, p0, Lˆʾ/ⁱˊ;->ˉʿ:Z

    :cond_7
    iget-boolean p2, p1, Lˆʾ/ⁱˊ;->ﹳᐧ:Z

    if-eqz p2, :cond_8

    iget p2, p1, Lˆʾ/ⁱˊ;->יـ:I

    iput p2, p0, Lˆʾ/ⁱˊ;->יـ:I

    iput-boolean v1, p0, Lˆʾ/ⁱˊ;->ﹳᐧ:Z

    :cond_8
    iget-boolean p2, p1, Lˆʾ/ⁱˊ;->ˏי:Z

    if-eqz p2, :cond_9

    iput-boolean v1, p0, Lˆʾ/ⁱˊ;->ˏי:Z

    :cond_9
    iget-object p2, p1, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    array-length p3, p2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    iget p3, p1, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    iput p3, p0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    iget-object p3, p1, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p3

    iput-object p3, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    goto :goto_3

    :cond_a
    new-instance p3, Landroid/util/SparseArray;

    iget v1, p0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    invoke-direct {p3, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p3, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    :goto_3
    iget p3, p0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    :goto_4
    if-ge v0, p3, :cond_e

    aget-object v1, p2, v0

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    aget-object v2, p2, v0

    aput-object v2, v1, v0

    :cond_c
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    const/16 p2, 0xa

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    :cond_e
    if-eqz p1, :cond_f

    iget-object p2, p1, Lˆʾ/ⁱˊ;->ˉٴ:[[I

    iput-object p2, p0, Lˆʾ/ⁱˊ;->ˉٴ:[[I

    goto :goto_6

    :cond_f
    iget-object p2, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    array-length p2, p2

    new-array p2, p2, [[I

    iput-object p2, p0, Lˆʾ/ⁱˊ;->ˉٴ:[[I

    :goto_6
    if-eqz p1, :cond_10

    iget-object p2, p1, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    iput-object p2, p0, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    iget-object p1, p1, Lˆʾ/ⁱˊ;->ٴʼ:Lיـ/יـ;

    iput-object p1, p0, Lˆʾ/ⁱˊ;->ٴʼ:Lיـ/יـ;

    return-void

    :cond_10
    new-instance p1, Lיـ/ʼˎ;

    invoke-direct {p1}, Lיـ/ʼˎ;-><init>()V

    iput-object p1, p0, Lˆʾ/ⁱˊ;->ᵎⁱ:Lיـ/ʼˎ;

    new-instance p1, Lיـ/יـ;

    invoke-direct {p1}, Lיـ/יـ;-><init>()V

    iput-object p1, p0, Lˆʾ/ⁱˊ;->ٴʼ:Lיـ/יـ;

    return-void
.end method


# virtual methods
.method public final canApplyTheme()Z
    .locals 6

    .prologue
    iget v0, p0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    iget-object v1, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_0
    iget-object v4, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final getChangingConfigurations()I
    .locals 2

    iget v0, p0, Lˆʾ/ⁱˊ;->ˈ:I

    iget v1, p0, Lˆʾ/ⁱˊ;->ˑﹳ:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lˆʾ/ˑﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lˆʾ/ˑﹳ;-><init>(Lˆʾ/ⁱˊ;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lˆʾ/ˑﹳ;

    invoke-direct {v0, p0, p1}, Lˆʾ/ˑﹳ;-><init>(Lˆʾ/ⁱˊ;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final ʽ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v4, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lˆʾ/ⁱˊ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v5, p0, Lˆʾ/ⁱˊ;->ʾᵎ:I

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lˆʾ/ⁱˊ;->ﹳٴ:Lˆʾ/ˑﹳ;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method public final ˈ(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    iget-object v0, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v2, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v3, p0, Lˆʾ/ⁱˊ;->ⁱˊ:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lˆʾ/ⁱˊ;->ʾᵎ:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lˆʾ/ⁱˊ;->ﹳٴ:Lˆʾ/ˑﹳ;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    iget-object p1, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object p1, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    iput-object v1, p0, Lˆʾ/ⁱˊ;->ﾞᴵ:Landroid/util/SparseArray;

    :cond_1
    return-object v2

    :cond_2
    return-object v1
.end method

.method public final ˑﹳ(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lˆʾ/ⁱˊ;->ٴʼ:Lיـ/יـ;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v1, Lיـ/יـ;->ʾˋ:[I

    iget v3, v1, Lיـ/יـ;->ʽʽ:I

    invoke-static {v2, v3, p1}, Lˏי/ﹳٴ;->ﹳٴ([III)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v1, v1, Lיـ/יـ;->ᴵˊ:[Ljava/lang/Object;

    aget-object p1, v1, p1

    sget-object v1, Lיـ/ˆʾ;->ⁱˊ:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final ⁱˊ()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˆʾ/ⁱˊ;->ˉʿ:Z

    invoke-virtual {p0}, Lˆʾ/ⁱˊ;->ʽ()V

    iget v0, p0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    iget-object v1, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    iput v2, p0, Lˆʾ/ⁱˊ;->ˉˆ:I

    iput v2, p0, Lˆʾ/ⁱˊ;->ᵔʾ:I

    const/4 v2, 0x0

    iput v2, p0, Lˆʾ/ⁱˊ;->ᵔﹳ:I

    iput v2, p0, Lˆʾ/ⁱˊ;->ʼᐧ:I

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lˆʾ/ⁱˊ;->ᵔʾ:I

    if-le v4, v5, :cond_0

    iput v4, p0, Lˆʾ/ⁱˊ;->ᵔʾ:I

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lˆʾ/ⁱˊ;->ˉˆ:I

    if-le v4, v5, :cond_1

    iput v4, p0, Lˆʾ/ⁱˊ;->ˉˆ:I

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget v5, p0, Lˆʾ/ⁱˊ;->ʼᐧ:I

    if-le v4, v5, :cond_2

    iput v4, p0, Lˆʾ/ⁱˊ;->ʼᐧ:I

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    iget v4, p0, Lˆʾ/ⁱˊ;->ᵔﹳ:I

    if-le v3, v4, :cond_3

    iput v3, p0, Lˆʾ/ⁱˊ;->ᵔﹳ:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final ﹳٴ(Landroid/graphics/drawable/Drawable;)I
    .locals 5

    .prologue
    iget v0, p0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    iget-object v1, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, 0xa

    new-array v3, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput-object v3, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [[I

    iget-object v3, p0, Lˆʾ/ⁱˊ;->ˉٴ:[[I

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lˆʾ/ⁱˊ;->ˉٴ:[[I

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v3, p0, Lˆʾ/ⁱˊ;->ﹳٴ:Lˆʾ/ˑﹳ;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Lˆʾ/ⁱˊ;->ᵎﹶ:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    iget v3, p0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    add-int/2addr v3, v1

    iput v3, p0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    iget v1, p0, Lˆʾ/ⁱˊ;->ˑﹳ:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, p0, Lˆʾ/ⁱˊ;->ˑﹳ:I

    iput-boolean v2, p0, Lˆʾ/ⁱˊ;->ﹳᐧ:Z

    iput-boolean v2, p0, Lˆʾ/ⁱˊ;->ˏי:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lˆʾ/ⁱˊ;->ٴﹶ:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lˆʾ/ⁱˊ;->ˆʾ:Z

    iput-boolean v2, p0, Lˆʾ/ⁱˊ;->ˉʿ:Z

    iput-boolean v2, p0, Lˆʾ/ⁱˊ;->ʽﹳ:Z

    return v0
.end method

.method public final ﾞᴵ([I)I
    .locals 4

    .prologue
    iget-object v0, p0, Lˆʾ/ⁱˊ;->ˉٴ:[[I

    iget v1, p0, Lˆʾ/ⁱˊ;->ᵔᵢ:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
