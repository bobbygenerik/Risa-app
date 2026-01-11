.class public final Lcom/google/android/material/datepicker/ʽﹳ;
.super Lˋˋ/ᴵˑ;
.source "SourceFile"


# instance fields
.field public final ˈ:Lcom/google/android/material/datepicker/ⁱˊ;

.field public final ˑﹳ:Landroidx/leanback/widget/ˉˆ;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/ⁱˊ;Landroidx/leanback/widget/ˉˆ;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Lˋˋ/ᴵˑ;-><init>()V

    iget-object v0, p2, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v1, p2, Lcom/google/android/material/datepicker/ⁱˊ;->ᴵˊ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v2, p2, Lcom/google/android/material/datepicker/ⁱˊ;->ˈٴ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    iget-object v3, v2, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, v2, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    iget-object v1, v1, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_1

    sget v0, Lcom/google/android/material/datepicker/ﹳᐧ;->ˈ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    const v0, 0x101020d

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/datepicker/ʽﹳ;->ﾞᴵ:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/ʽﹳ;->ˈ:Lcom/google/android/material/datepicker/ⁱˊ;

    iput-object p3, p0, Lcom/google/android/material/datepicker/ʽﹳ;->ˑﹳ:Landroidx/leanback/widget/ˉˆ;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lˋˋ/ᴵˑ;->ﾞʻ(Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "currentPage cannot be after lastPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstPage cannot be after currentPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ᵔᵢ(Landroid/view/ViewGroup;I)Lˋˋ/ʼـ;
    .locals 2

    .prologue
    const p2, 0x7f0e0101

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Lʼﾞ/ˊˋ;->ᵔʾ(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x101020d

    invoke-static {p1, v1}, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lˋˋ/ˊᵔ;

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/material/datepicker/ʽﹳ;->ﾞᴵ:I

    invoke-direct {p1, v0, v1}, Lˋˋ/ˊᵔ;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/google/android/material/datepicker/ˏי;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/datepicker/ˏי;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/ˏי;

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/datepicker/ˏי;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p1
.end method

.method public final ⁱˊ(I)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/ʽﹳ;->ˈ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    const/4 p1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {v0}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ﹳٴ()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/ʽﹳ;->ˈ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget v0, v0, Lcom/google/android/material/datepicker/ⁱˊ;->ٴᵢ:I

    return v0
.end method

.method public final ﾞᴵ(Lˋˋ/ʼـ;I)V
    .locals 3

    .prologue
    check-cast p1, Lcom/google/android/material/datepicker/ˏי;

    iget-object v0, p0, Lcom/google/android/material/datepicker/ʽﹳ;->ˈ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget-object v1, v0, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v1, v1, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->add(II)V

    new-instance p2, Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-direct {p2, v1}, Lcom/google/android/material/datepicker/ᵔﹳ;-><init>(Ljava/util/Calendar;)V

    iget-object v1, p1, Lcom/google/android/material/datepicker/ˏי;->ﹳـ:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/google/android/material/datepicker/ˏי;->ˈⁱ:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    const v1, 0x7f0b0291

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->ﹳٴ()Lcom/google/android/material/datepicker/ﹳᐧ;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->ﹳٴ()Lcom/google/android/material/datepicker/ﹳᐧ;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/datepicker/ﹳᐧ;->ﹳٴ:Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-virtual {p2, v1}, Lcom/google/android/material/datepicker/ᵔﹳ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->ﹳٴ()Lcom/google/android/material/datepicker/ﹳᐧ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1

    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/ﹳᐧ;

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/datepicker/ﹳᐧ;-><init>(Lcom/google/android/material/datepicker/ᵔﹳ;Lcom/google/android/material/datepicker/ⁱˊ;)V

    const/4 p1, 0x0

    throw p1
.end method
