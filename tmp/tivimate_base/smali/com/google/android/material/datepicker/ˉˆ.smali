.class public Lcom/google/android/material/datepicker/ˉˆ;
.super Lˑʼ/ʻٴ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "L\u02d1\u02bc/\u02bb\u0674;"
    }
.end annotation


# instance fields
.field public ʽʾ:Landroid/widget/TextView;

.field public ʿʽ:Ljava/lang/CharSequence;

.field public ˆˑ:Lcom/google/android/material/internal/CheckableImageButton;

.field public ˆﹳ:Ljava/lang/CharSequence;

.field public ˈـ:I

.field public ˊˊ:Ljava/lang/CharSequence;

.field public ˊﹳ:Ljava/lang/CharSequence;

.field public ˊﾞ:I

.field public ˋـ:Z

.field public ˎʾ:Lcom/google/android/material/datepicker/ʻٴ;

.field public ˎˉ:Lcom/google/android/material/datepicker/ﾞʻ;

.field public ˎـ:Lˋⁱ/ʼˎ;

.field public ˏⁱ:I

.field public ˑˆ:Lcom/google/android/material/datepicker/ⁱˊ;

.field public final יˉ:Ljava/util/LinkedHashSet;

.field public ـʻ:Ljava/lang/CharSequence;

.field public ٴʿ:Ljava/lang/CharSequence;

.field public ᵔⁱ:I

.field public ᵢʻ:Z

.field public ᵢˋ:Ljava/lang/CharSequence;

.field public ﹳᵢ:I

.field public ﹶʽ:I

.field public final ﾞˋ:Ljava/util/LinkedHashSet;

.field public ﾞˏ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lˑʼ/ʻٴ;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->יˉ:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﾞˋ:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static ˋـ(Landroid/content/Context;)I
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07049f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {}, Lcom/google/android/material/datepicker/ʼʼ;->ⁱˊ()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-static {v1}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    const v1, 0x7f0704a5

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0704b3

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/2addr v0, v4

    mul-int/2addr v1, v5

    add-int/2addr v1, v0

    sub-int/2addr v5, v3

    mul-int/2addr v5, p0

    add-int/2addr v5, v1

    return v5
.end method

.method public static ﹶʽ(Landroid/content/Context;I)Z
    .locals 2

    const-class v0, Lcom/google/android/material/datepicker/ﾞʻ;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f04040d

    invoke-static {v1, p0, v0}, Lˈˋ/ʾˊ;->ʾˋ(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->יˉ:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﾞˋ:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-super {p0, p1}, Lˑʼ/ʻٴ;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final ʽᵔ(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ʻٴ;->ʽᵔ(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˈـ:I

    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/ⁱˊ;

    iput-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˑˆ:Lcom/google/android/material/datepicker/ⁱˊ;

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﹳᵢ:I

    const-string v0, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ᵢˋ:Ljava/lang/CharSequence;

    const-string v0, "INPUT_MODE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ:I

    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ᵔⁱ:I

    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ٴʿ:Ljava/lang/CharSequence;

    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﾞˏ:I

    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˊˊ:Ljava/lang/CharSequence;

    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˊﾞ:I

    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ـʻ:Ljava/lang/CharSequence;

    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˏⁱ:I

    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˊﹳ:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ᵢˋ:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﹳᵢ:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ʿʽ:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    const/4 p1, 0x0

    aget-object p1, v0, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˆﹳ:Ljava/lang/CharSequence;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final ʾﾞ(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ʻٴ;->ʾﾞ(Landroid/os/Bundle;)V

    const-string v0, "OVERRIDE_THEME_RES_ID"

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˈـ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DATE_SELECTOR_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/google/android/material/datepicker/ﹳٴ;

    iget-object v2, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˑˆ:Lcom/google/android/material/datepicker/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v3, Lcom/google/android/material/datepicker/ﹳٴ;->ⁱˊ:I

    sget v3, Lcom/google/android/material/datepicker/ﹳٴ;->ⁱˊ:I

    iget-object v3, v2, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-wide v3, v3, Lcom/google/android/material/datepicker/ᵔﹳ;->ˊʻ:J

    iget-object v5, v2, Lcom/google/android/material/datepicker/ⁱˊ;->ᴵˊ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-wide v5, v5, Lcom/google/android/material/datepicker/ᵔﹳ;->ˊʻ:J

    iget-object v7, v2, Lcom/google/android/material/datepicker/ⁱˊ;->ˈٴ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-wide v7, v7, Lcom/google/android/material/datepicker/ᵔﹳ;->ˊʻ:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/material/datepicker/ﹳٴ;->ﹳٴ:Ljava/lang/Long;

    iget v13, v2, Lcom/google/android/material/datepicker/ⁱˊ;->ᴵᵔ:I

    iget-object v2, v2, Lcom/google/android/material/datepicker/ⁱˊ;->ʽʽ:Lcom/google/android/material/datepicker/ˈ;

    iget-object v7, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˎˉ:Lcom/google/android/material/datepicker/ﾞʻ;

    if-nez v7, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    iget-object v7, v7, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    :goto_0
    if-eqz v7, :cond_1

    iget-wide v7, v7, Lcom/google/android/material/datepicker/ᵔﹳ;->ˊʻ:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/material/datepicker/ﹳٴ;->ﹳٴ:Ljava/lang/Long;

    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v2, v8

    new-instance v8, Lcom/google/android/material/datepicker/ⁱˊ;

    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/ᵔﹳ;->ⁱˊ(J)Lcom/google/android/material/datepicker/ᵔﹳ;

    move-result-object v9

    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/ᵔﹳ;->ⁱˊ(J)Lcom/google/android/material/datepicker/ᵔﹳ;

    move-result-object v10

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/material/datepicker/ˈ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ﹳٴ;->ﹳٴ:Ljava/lang/Long;

    if-nez v0, :cond_2

    move-object v12, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/ᵔﹳ;->ⁱˊ(J)Lcom/google/android/material/datepicker/ᵔﹳ;

    move-result-object v0

    move-object v12, v0

    :goto_1
    invoke-direct/range {v8 .. v13}, Lcom/google/android/material/datepicker/ⁱˊ;-><init>(Lcom/google/android/material/datepicker/ᵔﹳ;Lcom/google/android/material/datepicker/ᵔﹳ;Lcom/google/android/material/datepicker/ˈ;Lcom/google/android/material/datepicker/ᵔﹳ;I)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﹳᵢ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TITLE_TEXT_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ᵢˋ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "INPUT_MODE_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ᵔⁱ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ٴʿ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﾞˏ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˊˊ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˊﾞ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ـʻ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˏⁱ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˊﹳ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ˎʾ(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˈـ:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101020d

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˋـ:Z

    new-instance v1, Lˋⁱ/ʼˎ;

    const v3, 0x7f04040d

    const v4, 0x7f140648

    invoke-direct {v1, v0, v2, v3, v4}, Lˋⁱ/ʼˎ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˎـ:Lˋⁱ/ʼˎ;

    sget-object v1, Lיﹶ/ﹳٴ;->ᵔʾ:[I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˎـ:Lˋⁱ/ʼˎ;

    invoke-virtual {v1, v0}, Lˋⁱ/ʼˎ;->ﾞʻ(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˎـ:Lˋⁱ/ʼˎ;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lˋⁱ/ʼˎ;->ˉˆ(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˎـ:Lˋⁱ/ʼˎ;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v1

    invoke-virtual {v0, v1}, Lˋⁱ/ʼˎ;->ᵔʾ(F)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/ˉˆ;->ᵢˋ()V

    throw v2
.end method

.method public final ᐧˎ()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˎʾ:Lcom/google/android/material/datepicker/ʻٴ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ʻٴ;->ᐧˎ:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    invoke-super {p0}, Lˑʼ/ʻٴ;->ᐧˎ()V

    return-void
.end method

.method public final ᐧﹶ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˋـ:Z

    if-eqz p3, :cond_0

    const p3, 0x7f0e010b

    goto :goto_0

    :cond_0
    const p3, 0x7f0e010a

    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean p3, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˋـ:Z

    if-eqz p3, :cond_1

    const p3, 0x7f0b029b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, Lcom/google/android/material/datepicker/ˉˆ;->ˋـ(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    const p3, 0x7f0b029c

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, Lcom/google/android/material/datepicker/ˉˆ;->ˋـ(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const p3, 0x7f0b02aa

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    const p3, 0x7f0b02ac

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object p3, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˆˑ:Lcom/google/android/material/internal/CheckableImageButton;

    const p3, 0x7f0b02b0

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/material/datepicker/ˉˆ;->ʽʾ:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˆˑ:Lcom/google/android/material/internal/CheckableImageButton;

    const-string v1, "TOGGLE_BUTTON_TAG"

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˆˑ:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v2, 0x10100a0

    filled-new-array {v2}, [I

    move-result-object v2

    const v3, 0x7f0801c1

    invoke-static {p2, v3}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    new-array v3, v2, [I

    const v4, 0x7f0801c3

    invoke-static {p2, v4}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3, v1}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˆˑ:Lcom/google/android/material/internal/CheckableImageButton;

    iget p3, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ:I

    if-eqz p3, :cond_2

    move v2, v0

    :cond_2
    invoke-virtual {p2, v2}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˆˑ:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˆˑ:Lcom/google/android/material/internal/CheckableImageButton;

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ:I

    if-ne v1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f130169

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f13016b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    iget-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˆˑ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˆˑ:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v0, Lcom/google/android/material/datepicker/ˉʿ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/datepicker/ˉʿ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b00d4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/ˉˆ;->ᵢˋ()V

    throw p3
.end method

.method public final ᵢˋ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public final ⁱˉ()V
    .locals 13

    .prologue
    invoke-super {p0}, Lˑʼ/ʻٴ;->ⁱˉ()V

    iget-object v0, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    const-string v1, " does not have a Dialog."

    const-string v2, "DialogFragment "

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˋـ:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_11

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˎـ:Lˋⁱ/ʼˎ;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ᵢʻ:Z

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ﹶ()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b01aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lʼˉ/ʽ;->ˑﹳ(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v4

    :goto_2
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x1010031

    const/high16 v9, -0x1000000

    invoke-static {v7, v8, v9}, Lʽٴ/ˈ;->ˆʾ(Landroid/content/Context;II)I

    move-result v7

    if-eqz v6, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    const/16 v10, 0x23

    if-lt v6, v10, :cond_4

    invoke-static {v0, v3}, Lˊˋ/ˈ;->ˈ(Landroid/view/Window;Z)V

    goto :goto_3

    :cond_4
    if-lt v6, v8, :cond_5

    invoke-static {v0, v3}, Lˊˋ/ˈ;->ʽ(Landroid/view/Window;Z)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v12

    or-int/lit16 v12, v12, 0x700

    invoke-virtual {v11, v12}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_3
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0x1b

    if-ge v6, v12, :cond_6

    const v6, 0x1010452

    invoke-static {v11, v6, v9}, Lʽٴ/ˈ;->ˆʾ(Landroid/content/Context;II)I

    move-result v6

    const/16 v9, 0x80

    invoke-static {v6, v9}, Lᵎⁱ/ﹳٴ;->ˈ(II)I

    move-result v6

    goto :goto_4

    :cond_6
    move v6, v3

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0, v6}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lʽٴ/ˈ;->ﹳᐧ(I)Z

    move-result v2

    invoke-static {v3}, Lʽٴ/ˈ;->ﹳᐧ(I)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v2, v4

    :goto_6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    new-instance v11, Lﹳˋ/ʼˎ;

    invoke-direct {v11, v9}, Lﹳˋ/ʼˎ;-><init>(Landroid/view/View;)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v9, v10, :cond_9

    new-instance v9, Lˋᵔ/ʼـ;

    invoke-direct {v9, v0, v11}, Lˋᵔ/ˑ;-><init>(Landroid/view/Window;Lﹳˋ/ʼˎ;)V

    goto :goto_7

    :cond_9
    if-lt v9, v8, :cond_a

    new-instance v9, Lˋᵔ/ˑ;

    invoke-direct {v9, v0, v11}, Lˋᵔ/ˑ;-><init>(Landroid/view/Window;Lﹳˋ/ʼˎ;)V

    goto :goto_7

    :cond_a
    if-lt v9, v12, :cond_b

    new-instance v9, Lˋᵔ/ʾˊ;

    invoke-direct {v9, v0, v11}, Lˋᵔ/י;-><init>(Landroid/view/Window;Lﹳˋ/ʼˎ;)V

    goto :goto_7

    :cond_b
    new-instance v9, Lˋᵔ/י;

    invoke-direct {v9, v0, v11}, Lˋᵔ/י;-><init>(Landroid/view/Window;Lﹳˋ/ʼˎ;)V

    :goto_7
    invoke-virtual {v9, v2}, Lᴵˋ/ˊʻ;->ٴʼ(Z)V

    invoke-static {v7}, Lʽٴ/ˈ;->ﹳᐧ(I)Z

    move-result v2

    invoke-static {v6}, Lʽٴ/ˈ;->ﹳᐧ(I)Z

    move-result v7

    if-nez v7, :cond_c

    if-nez v6, :cond_d

    if-eqz v2, :cond_d

    :cond_c
    move v3, v4

    :cond_d
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v6, Lﹳˋ/ʼˎ;

    invoke-direct {v6, v2}, Lﹳˋ/ʼˎ;-><init>(Landroid/view/View;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_e

    new-instance v2, Lˋᵔ/ʼـ;

    invoke-direct {v2, v0, v6}, Lˋᵔ/ˑ;-><init>(Landroid/view/Window;Lﹳˋ/ʼˎ;)V

    goto :goto_8

    :cond_e
    if-lt v2, v8, :cond_f

    new-instance v2, Lˋᵔ/ˑ;

    invoke-direct {v2, v0, v6}, Lˋᵔ/ˑ;-><init>(Landroid/view/Window;Lﹳˋ/ʼˎ;)V

    goto :goto_8

    :cond_f
    if-lt v2, v12, :cond_10

    new-instance v2, Lˋᵔ/ʾˊ;

    invoke-direct {v2, v0, v6}, Lˋᵔ/י;-><init>(Landroid/view/Window;Lﹳˋ/ʼˎ;)V

    goto :goto_8

    :cond_10
    new-instance v2, Lˋᵔ/י;

    invoke-direct {v2, v0, v6}, Lˋᵔ/י;-><init>(Landroid/view/Window;Lﹳˋ/ʼˎ;)V

    :goto_8
    invoke-virtual {v2, v3}, Lᴵˋ/ˊʻ;->ᵎⁱ(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v7, Lcom/google/android/material/datepicker/ᵔʾ;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput v6, v7, Lcom/google/android/material/datepicker/ᵔʾ;->ʾˋ:I

    iput-object v1, v7, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵᵔ:Ljava/lang/Object;

    iput v2, v7, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    iput v0, v7, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    iput v3, v7, Lcom/google/android/material/datepicker/ᵔʾ;->ˈٴ:I

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v1, v7}, Lˋᵔ/ʽʽ;->ˆʾ(Landroid/view/View;Lˋᵔ/ˉˆ;)V

    iput-boolean v4, p0, Lcom/google/android/material/datepicker/ˉˆ;->ᵢʻ:Z

    goto :goto_9

    :cond_11
    const/4 v3, -0x2

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᐧﾞ()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0704a7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    iget-object v8, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˎـ:Lˋⁱ/ʼˎ;

    move v10, v9

    move v11, v9

    move v12, v9

    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v6, Lᴵᵎ/ﹳٴ;

    iget-object v7, p0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz v7, :cond_19

    invoke-direct {v6, v7, v3}, Lᴵᵎ/ﹳٴ;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_12
    :goto_9
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    iget v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˈـ:I

    if-eqz v0, :cond_18

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ:I

    if-ne v1, v4, :cond_13

    const-string v1, "TEXT_INPUT_FRAGMENT_TAG"

    goto :goto_a

    :cond_13
    const-string v1, "CALENDAR_FRAGMENT_TAG"

    :goto_a
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˉـ()Lˑʼ/ʿ;

    move-result-object v2

    invoke-virtual {v2, v1}, Lˑʼ/ʿ;->ᴵᵔ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/material/datepicker/ʻٴ;

    if-eqz v2, :cond_14

    check-cast v1, Lcom/google/android/material/datepicker/ʻٴ;

    goto :goto_b

    :cond_14
    move-object v1, v5

    :goto_b
    if-nez v1, :cond_16

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ:I

    const-string v2, "CALENDAR_CONSTRAINTS_KEY"

    const-string v3, "THEME_RES_ID_KEY"

    if-ne v1, v4, :cond_15

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/ˉˆ;->ᵢˋ()V

    iget-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˑˆ:Lcom/google/android/material/datepicker/ⁱˊ;

    new-instance v6, Lcom/google/android/material/datepicker/ʼᐧ;

    invoke-direct {v6}, Lcom/google/android/material/datepicker/ʼᐧ;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v6, v7}, Lˑʼ/ᴵᵔ;->ⁱᴵ(Landroid/os/Bundle;)V

    :goto_c
    move-object v1, v6

    goto :goto_d

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/ˉˆ;->ᵢˋ()V

    iget-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˑˆ:Lcom/google/android/material/datepicker/ⁱˊ;

    new-instance v6, Lcom/google/android/material/datepicker/ﾞʻ;

    invoke-direct {v6}, Lcom/google/android/material/datepicker/ﾞʻ;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_MONTH_KEY"

    iget-object v1, v1, Lcom/google/android/material/datepicker/ⁱˊ;->ˈٴ:Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v6, v7}, Lˑʼ/ᴵᵔ;->ⁱᴵ(Landroid/os/Bundle;)V

    iput-object v6, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˎˉ:Lcom/google/android/material/datepicker/ﾞʻ;

    goto :goto_c

    :cond_16
    :goto_d
    iput-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˎʾ:Lcom/google/android/material/datepicker/ʻٴ;

    new-instance v0, Lᵎˉ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/ʻٴ;->ﾞˋ(Lᵎˉ/ⁱˊ;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/ˉˆ;->ʽʾ:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ﹶʽ:I

    if-ne v1, v4, :cond_17

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᐧﾞ()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ˆﹳ:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_17
    iget-object v1, p0, Lcom/google/android/material/datepicker/ˉˆ;->ʿʽ:Ljava/lang/CharSequence;

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/ˉˆ;->ᵢˋ()V

    throw v5

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/ˉˆ;->ᵢˋ()V

    throw v5

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
