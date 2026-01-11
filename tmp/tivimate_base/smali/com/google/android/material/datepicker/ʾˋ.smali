.class public final Lcom/google/android/material/datepicker/ʾˋ;
.super Lˋˋ/ᴵˑ;
.source "SourceFile"


# instance fields
.field public final ˈ:Lcom/google/android/material/datepicker/ﾞʻ;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/ﾞʻ;)V
    .locals 0

    invoke-direct {p0}, Lˋˋ/ᴵˑ;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/ʾˋ;->ˈ:Lcom/google/android/material/datepicker/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final ᵔᵢ(Landroid/view/ViewGroup;I)Lˋˋ/ʼـ;
    .locals 1

    const p2, 0x7f0e0105

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Lʼﾞ/ˊˋ;->ᵔʾ(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/google/android/material/datepicker/ᵢˏ;

    invoke-direct {p2, p1}, Lcom/google/android/material/datepicker/ᵢˏ;-><init>(Landroid/widget/TextView;)V

    return-object p2
.end method

.method public final ﹳٴ()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/ʾˋ;->ˈ:Lcom/google/android/material/datepicker/ﾞʻ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ﾞʻ;->ـˊ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget v0, v0, Lcom/google/android/material/datepicker/ⁱˊ;->ˊʻ:I

    return v0
.end method

.method public final ﾞᴵ(Lˋˋ/ʼـ;I)V
    .locals 6

    .prologue
    check-cast p1, Lcom/google/android/material/datepicker/ᵢˏ;

    iget-object v0, p0, Lcom/google/android/material/datepicker/ʾˋ;->ˈ:Lcom/google/android/material/datepicker/ﾞʻ;

    iget-object v1, v0, Lcom/google/android/material/datepicker/ﾞʻ;->ـˊ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget-object v1, v1, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget v1, v1, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽʽ:I

    add-int/2addr v1, p2

    iget-object p1, p1, Lcom/google/android/material/datepicker/ᵢˏ;->ﹳـ:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "%d"

    invoke-static {p2, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/google/android/material/datepicker/ʼʼ;->ⁱˊ()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    const v2, 0x7f130156

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const v2, 0x7f130157

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/google/android/material/datepicker/ﾞʻ;->ﹳⁱ:Lcom/google/android/material/datepicker/ʽ;

    invoke-static {}, Lcom/google/android/material/datepicker/ʼʼ;->ⁱˊ()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p2, v1, :cond_1

    iget-object p1, p1, Lcom/google/android/material/datepicker/ʽ;->ⁱˊ:Lٴﾞ/ˆʾ;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/google/android/material/datepicker/ʽ;->ﹳٴ:Lٴﾞ/ˆʾ;

    :goto_1
    const/4 p1, 0x0

    throw p1
.end method
