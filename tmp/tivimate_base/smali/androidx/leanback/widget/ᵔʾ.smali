.class public final Landroidx/leanback/widget/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/ᵔʾ;->ʾˋ:I

    iput-object p2, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lʼٴ/ⁱˊ;Lar/tvplayer/core/data/api/parse/ˈ;)V
    .locals 0

    const/16 p2, 0x8

    iput p2, p0, Landroidx/leanback/widget/ᵔʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method private final ⁱˊ()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ٴﹶ;

    iget-object v0, v0, Lˏـ/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ٴﹶ;

    iget-object v1, v1, Lˏـ/ٴﹶ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ⁱˊ;

    invoke-interface {v1}, Lˏـ/ⁱˊ;->ᵔﹳ()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final ﹳٴ()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iget-object v0, v0, Landroidx/preference/PreferenceGroup;->ـᵎ:Lיـ/ﹳᐧ;

    invoke-virtual {v0}, Lיـ/ﹳᐧ;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ᵔʾ;->ʾˋ:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lⁱʽ/ﹳٴ;

    iget-object v0, v0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹳˊ/ʼˎ;

    iget-object v0, v0, Lﹳˊ/ʼˎ;->ˑﹳ:Lᵢʾ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lᵢʾ/ﹳٴ;->ʽ(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹳˊ/ʼˎ;

    invoke-virtual {v0}, Lﹳˊ/ʼˎ;->ᵔᵢ()V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔⁱ/ﾞʻ;

    invoke-interface {v0}, Lᵔⁱ/ﾞʻ;->ﾞᴵ()V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/picker/DatePicker;

    iget v1, v0, Landroidx/leanback/widget/picker/DatePicker;->ˈⁱ:I

    iget v2, v0, Landroidx/leanback/widget/picker/DatePicker;->ﹳـ:I

    iget v3, v0, Landroidx/leanback/widget/picker/DatePicker;->ᴵˑ:I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    move v2, v5

    move v3, v2

    :goto_0
    if-ltz v4, :cond_8

    aget v7, v1, v4

    if-gez v7, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-object v8, Landroidx/leanback/widget/picker/DatePicker;->ˏᵢ:[I

    aget v8, v8, v4

    invoke-virtual {v0, v7}, Landroidx/leanback/widget/picker/Picker;->ﹳٴ(I)Lי/ˈ;

    move-result-object v7

    if-eqz v2, :cond_2

    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->ʿᵢ:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget v10, v7, Lי/ˈ;->ⁱˊ:I

    if-eq v9, v10, :cond_1

    iput v9, v7, Lי/ˈ;->ⁱˊ:I

    :goto_1
    move v9, v5

    goto :goto_2

    :cond_1
    move v9, v6

    goto :goto_2

    :cond_2
    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->ᐧﾞ:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v9

    iget v10, v7, Lי/ˈ;->ⁱˊ:I

    if-eq v9, v10, :cond_1

    iput v9, v7, Lי/ˈ;->ⁱˊ:I

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_4

    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->ᵎᵔ:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget v11, v7, Lי/ˈ;->ʽ:I

    if-eq v10, v11, :cond_3

    iput v10, v7, Lי/ˈ;->ʽ:I

    :goto_3
    move v10, v5

    goto :goto_4

    :cond_3
    move v10, v6

    :goto_4
    or-int/2addr v9, v10

    goto :goto_5

    :cond_4
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->ᐧﾞ:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    iget v11, v7, Lי/ˈ;->ʽ:I

    if-eq v10, v11, :cond_3

    iput v10, v7, Lי/ˈ;->ʽ:I

    goto :goto_3

    :goto_5
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->ᐧﾞ:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->ʿᵢ:Ljava/util/Calendar;

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v10, v11, :cond_5

    move v10, v5

    goto :goto_6

    :cond_5
    move v10, v6

    :goto_6
    and-int/2addr v2, v10

    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->ᐧﾞ:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->ᵎᵔ:Ljava/util/Calendar;

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v10, v11, :cond_6

    move v10, v5

    goto :goto_7

    :cond_6
    move v10, v6

    :goto_7
    and-int/2addr v3, v10

    if-eqz v9, :cond_7

    aget v9, v1, v4

    invoke-virtual {v0, v9, v7}, Landroidx/leanback/widget/picker/Picker;->ˈ(ILי/ˈ;)V

    :cond_7
    aget v7, v1, v4

    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->ᐧﾞ:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroidx/leanback/widget/picker/Picker;->ˑﹳ(II)V

    :goto_8
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_8
    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ʿ;

    invoke-virtual {v0, v5}, Lˑʼ/ʿ;->ʾˋ(Z)Z

    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵔﹳ;

    iget-object v1, v0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lˑʼ/ᵔﹳ;->ˑﹳ()V

    :cond_9
    return-void

    :pswitch_5
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ʻٴ;

    iget-object v1, v0, Lˑʼ/ʻٴ;->ᵎʿ:Lˑʼ/יـ;

    iget-object v0, v0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Lˑʼ/יـ;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_6
    invoke-direct {p0}, Landroidx/leanback/widget/ᵔʾ;->ⁱˊ()V

    return-void

    :pswitch_7
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->ˎʾ()Z

    return-void

    :pswitch_8
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ᴵˊ;

    iget-object v1, v0, Lˋˋ/ᴵˊ;->ᵢˏ:Landroid/animation/ValueAnimator;

    iget v2, v0, Lˋˋ/ᴵˊ;->ʾˋ:I

    if-eq v2, v5, :cond_a

    if-eq v2, v4, :cond_b

    goto :goto_9

    :cond_a
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    iput v3, v0, Lˋˋ/ᴵˊ;->ʾˋ:I

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-array v2, v4, [F

    aput v0, v2, v6

    const/4 v0, 0x0

    aput v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 v0, 0x1f4

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_9
    return-void

    :pswitch_9
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉـ/ˑﹳ;

    invoke-virtual {v0, v6}, Lˉـ/ˑﹳ;->ᵔʾ(I)V

    return-void

    :pswitch_a
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->ـˏ:Lˉˆ/ٴﹶ;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lˉˆ/ٴﹶ;->ﾞʻ()Z

    :cond_c
    return-void

    :pswitch_b
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->ˊʻ:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iput-boolean v6, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->ˊʻ:Z

    :cond_d
    return-void

    :pswitch_c
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ʾˊ;

    iput-object v2, v0, Lˉˆ/ʾˊ;->ᵔי:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v0}, Lˉˆ/ʾˊ;->drawableStateChanged()V

    return-void

    :pswitch_d
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˆʾ/ˑﹳ;

    invoke-virtual {v0, v5}, Lˆʾ/ˑﹳ;->ﹳٴ(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_e
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/core/util/RestartProcessActivity;

    invoke-static {v0, v5}, Lʿˋ/ˉʿ;->ʽᵔ(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_f
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/parse/ٴʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_a
    :try_start_0
    iget-object v1, v0, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lʿʾ/ʽ;

    invoke-virtual {v0, v1}, Lcom/parse/ٴʼ;->ٴᵢ(Lʿʾ/ʽ;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_a

    :pswitch_10
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->ʽʽ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void

    :pswitch_11
    :try_start_1
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽ/ٴﹶ;

    invoke-static {v0}, Lʽ/ٴﹶ;->ⁱˊ(Lʽ/ٴﹶ;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_d

    :cond_e
    throw v0

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_d
    return-void

    :cond_f
    throw v0

    :pswitch_12
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʽﹳ;

    iget-object v2, v0, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    invoke-virtual {v2, v6}, Lʼٴ/ⁱˊ;->ʻˋ(I)V

    sget-object v3, Lʼٴ/ˈٴ;->ٴﹶ:Lʼٴ/ﾞᴵ;

    iget v4, v0, Lʼٴ/ʽﹳ;->ˈٴ:I

    invoke-virtual {v2, v1, v4, v3}, Lʼٴ/ⁱˊ;->ﹳﹳ(IILʼٴ/ﾞᴵ;)V

    invoke-virtual {v0, v3}, Lʼٴ/ʽﹳ;->ʽ(Lʼٴ/ﾞᴵ;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹳʽ/ˊʻ;

    :try_start_2
    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ⁱˊ;

    iget-object v0, v0, Lʼٴ/ⁱˊ;->ٴᵢ:Lʼٴ/ʽ;

    invoke-interface {v0}, Lʼٴ/ʽ;->ˑﹳ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v0

    const-string v1, "BillingClient"

    const-string v2, "Exception calling onBillingServiceDisconnected."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    return-void

    :pswitch_14
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ⁱˊ;

    sget-object v2, Lʼٴ/ˈٴ;->ٴﹶ:Lʼٴ/ﾞᴵ;

    invoke-virtual {v0, v1, v3, v2}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    sget-boolean v0, Lar/tvplayer/core/domain/ʻٴ;->ﹳٴ:Z

    return-void

    :pswitch_15
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻᐧ/ـˆ;

    invoke-virtual {v0}, Lʻᐧ/ـˆ;->ﹳᐧ()V

    return-void

    :pswitch_16
    invoke-direct {p0}, Landroidx/leanback/widget/ᵔʾ;->ﹳٴ()V

    return-void

    :pswitch_17
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻᐧ/ˏי;

    iget-object v0, v0, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :pswitch_18
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻᐧ/ˈ;

    invoke-virtual {v0}, Lʻᐧ/ˈ;->ٴʿ()V

    return-void

    :pswitch_19
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/ᵔʾ;

    iget-object v1, v0, Lcom/bumptech/glide/ᵔʾ;->ʽʽ:Lٴʽ/ᵎﹶ;

    invoke-interface {v1, v0}, Lٴʽ/ᵎﹶ;->ˑﹳ(Lٴʽ/ʼˎ;)V

    return-void

    :pswitch_1a
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/ʽʽ;

    iget-object v0, v0, Landroidx/lifecycle/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/ʽʽ;

    iget-object v1, v1, Landroidx/lifecycle/ʽʽ;->ﾞᴵ:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/ʽʽ;

    sget-object v3, Landroidx/lifecycle/ʽʽ;->ٴﹶ:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/lifecycle/ʽʽ;->ﾞᴵ:Ljava/lang/Object;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/ʽʽ;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ʽʽ;->ٴﹶ(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :pswitch_1b
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/SearchEditText;

    iget-object v0, v0, Landroidx/leanback/widget/SearchEditText;->ˉٴ:Landroidx/leanback/widget/ﹳﹳ;

    if-eqz v0, :cond_11

    check-cast v0, Lﹳי/ʽ;

    iget-object v0, v0, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/SearchBar;

    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->ʾˋ:Landroidx/leanback/widget/ˈˏ;

    if-eqz v0, :cond_11

    check-cast v0, Lⁱʽ/ﹳٴ;

    iget-object v0, v0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﾞᵔ/ˉٴ;

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object v0

    instance-of v1, v0, Lʼⁱ/ʽ;

    if-eqz v1, :cond_10

    move-object v2, v0

    check-cast v2, Lʼⁱ/ʽ;

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v2, v6}, Lʼⁱ/ʽ;->ـˆ(Z)V

    :cond_11
    return-void

    :pswitch_1c
    iget-object v0, p0, Landroidx/leanback/widget/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
