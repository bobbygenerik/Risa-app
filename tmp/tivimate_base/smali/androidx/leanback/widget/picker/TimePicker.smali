.class public Landroidx/leanback/widget/picker/TimePicker;
.super Landroidx/leanback/widget/picker/Picker;
.source "SourceFile"


# instance fields
.field public ʼˈ:Lי/ˈ;

.field public ʿ:I

.field public ʿᵢ:I

.field public ˈⁱ:I

.field public ˉـ:Z

.field public ˊˋ:Lי/ˈ;

.field public ˋᵔ:Lי/ˈ;

.field public ـˏ:I

.field public ᐧﾞ:Ljava/lang/String;

.field public final ᴵˑ:Lˏˆ/ﹳٴ;

.field public ᵎᵔ:I

.field public ﹳـ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const v0, 0x7f040673

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    new-instance v1, Lˏˆ/ﹳٴ;

    invoke-direct {v1, v0}, Lˏˆ/ﹳٴ;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->ᴵˑ:Lˏˆ/ﹳٴ;

    sget-object v4, Lـᵎ/ﹳٴ;->ʼˎ:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lˋᵔ/ᵎˊ;->ﾞʻ(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    :try_start_0
    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v6, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v2, Landroidx/leanback/widget/picker/TimePicker;->ˉـ:Z

    const/4 p1, 0x3

    const/4 p2, 0x1

    invoke-virtual {v6, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->ٴﹶ()V

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->ﾞʻ()V

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/picker/TimePicker;->setHour(I)V

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/TimePicker;->setMinute(I)V

    iget-boolean p1, v2, Landroidx/leanback/widget/picker/TimePicker;->ˉـ:Z

    if-nez p1, :cond_0

    iget p1, v2, Landroidx/leanback/widget/picker/TimePicker;->ˈⁱ:I

    iget p2, v2, Landroidx/leanback/widget/picker/TimePicker;->ᵎᵔ:I

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/picker/Picker;->ˑﹳ(II)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method


# virtual methods
.method public getBestHourMinutePattern()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ᴵˑ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Locale;

    iget-boolean v1, p0, Landroidx/leanback/widget/picker/TimePicker;->ˉـ:Z

    if-eqz v1, :cond_0

    const-string v1, "Hma"

    goto :goto_0

    :cond_0
    const-string v1, "hma"

    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "h:mma"

    :cond_1
    return-object v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ˉـ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ʿ:I

    return v0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ᵎᵔ:I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ʿ:I

    rem-int/lit8 v0, v0, 0xc

    return v0

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ʿ:I

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ʿᵢ:I

    return v0
.end method

.method public setHour(I)V
    .locals 3

    .prologue
    if-ltz p1, :cond_3

    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->ʿ:I

    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ˉـ:Z

    if-nez v0, :cond_2

    const/16 v1, 0xc

    if-lt p1, v1, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->ᵎᵔ:I

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->ʿ:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->ᵎᵔ:I

    if-nez p1, :cond_1

    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->ʿ:I

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->ˈⁱ:I

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ᵎᵔ:I

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/picker/Picker;->ˑﹳ(II)V

    :cond_2
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->ـˏ:I

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ʿ:I

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/picker/Picker;->ˑﹳ(II)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hour: "

    const-string v2, " is not in [0-23] range in"

    invoke-static {p1, v1, v2}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIs24Hour(Z)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ˉـ:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getHour()I

    move-result v0

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getMinute()I

    move-result v1

    iput-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->ˉـ:Z

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->ٴﹶ()V

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->ﾞʻ()V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/picker/TimePicker;->setHour(I)V

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/picker/TimePicker;->setMinute(I)V

    iget-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->ˉـ:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->ˈⁱ:I

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ᵎᵔ:I

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/picker/Picker;->ˑﹳ(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMinute(I)V
    .locals 3

    .prologue
    if-ltz p1, :cond_0

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->ʿᵢ:I

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ﹳـ:I

    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/picker/Picker;->ˑﹳ(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minute: "

    const-string v2, " is not in [0-59] range."

    invoke-static {p1, v1, v2}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʽ(II)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ـˏ:I

    if-ne p1, v0, :cond_0

    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->ʿ:I

    return-void

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ﹳـ:I

    if-ne p1, v0, :cond_1

    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->ʿᵢ:I

    return-void

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ˈⁱ:I

    if-ne p1, v0, :cond_2

    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->ᵎᵔ:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid column index."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ٴﹶ()V
    .locals 15

    .prologue
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->ᐧﾞ:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ᐧﾞ:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->ᴵˑ:Lˏˆ/ﹳٴ;

    iget-object v2, v1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Ljava/util/Locale;

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const/16 v5, 0x61

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const-string v6, "a"

    if-ltz v5, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v7, "m"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v5, v0, :cond_3

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v2, :cond_4

    const-string v2, "mh"

    goto :goto_2

    :cond_4
    const-string v2, "hm"

    :goto_2
    iget-boolean v5, p0, Landroidx/leanback/widget/picker/TimePicker;->ˉـ:Z

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x7

    new-array v8, v7, [C

    fill-array-data v8, :array_0

    move v9, v3

    move v10, v9

    move v11, v10

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_e

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_7

    goto :goto_7

    :cond_7
    const/16 v13, 0x27

    if-ne v12, v13, :cond_9

    if-nez v10, :cond_8

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move v10, v4

    goto :goto_7

    :cond_8
    move v10, v3

    goto :goto_7

    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    move v13, v3

    :goto_5
    if-ge v13, v7, :cond_c

    aget-char v14, v8, v13

    if-ne v12, v14, :cond_b

    if-eq v12, v11, :cond_d

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_6

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    :goto_6
    move v11, v12

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    if-ne v0, v6, :cond_15

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/picker/Picker;->setSeparators(Ljava/util/List;)V

    iget-object v0, v1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/leanback/widget/picker/TimePicker;->ʼˈ:Lי/ˈ;

    iput-object v2, p0, Landroidx/leanback/widget/picker/TimePicker;->ˊˋ:Lי/ˈ;

    iput-object v2, p0, Landroidx/leanback/widget/picker/TimePicker;->ˋᵔ:Lי/ˈ;

    const/4 v2, -0x1

    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->ˈⁱ:I

    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->ﹳـ:I

    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->ـˏ:I

    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v3

    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_14

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x41

    if-eq v6, v7, :cond_11

    const/16 v7, 0x48

    if-eq v6, v7, :cond_10

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_f

    new-instance v6, Lי/ˈ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Landroidx/leanback/widget/picker/TimePicker;->ˊˋ:Lי/ˈ;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroidx/leanback/widget/picker/TimePicker;->ˊˋ:Lי/ˈ;

    iget-object v7, v1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v6, Lי/ˈ;->ˈ:[Ljava/lang/CharSequence;

    iput v5, p0, Landroidx/leanback/widget/picker/TimePicker;->ﹳـ:I

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time picker format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v6, Lי/ˈ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Landroidx/leanback/widget/picker/TimePicker;->ˋᵔ:Lי/ˈ;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroidx/leanback/widget/picker/TimePicker;->ˋᵔ:Lי/ˈ;

    iget-object v7, v1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v6, Lי/ˈ;->ˈ:[Ljava/lang/CharSequence;

    iput v5, p0, Landroidx/leanback/widget/picker/TimePicker;->ـˏ:I

    goto :goto_9

    :cond_11
    new-instance v6, Lי/ˈ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Landroidx/leanback/widget/picker/TimePicker;->ʼˈ:Lי/ˈ;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroidx/leanback/widget/picker/TimePicker;->ʼˈ:Lי/ˈ;

    iget-object v7, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v6, Lי/ˈ;->ˈ:[Ljava/lang/CharSequence;

    iput v5, p0, Landroidx/leanback/widget/picker/TimePicker;->ˈⁱ:I

    iget v7, v6, Lי/ˈ;->ⁱˊ:I

    if-eqz v7, :cond_12

    iput v3, v6, Lי/ˈ;->ⁱˊ:I

    :cond_12
    iget v7, v6, Lי/ˈ;->ʽ:I

    if-eq v4, v7, :cond_13

    iput v4, v6, Lי/ˈ;->ʽ:I

    :cond_13
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_14
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/picker/Picker;->setColumns(Ljava/util/List;)V

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Separators size: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " must equal the size of timeFieldsPattern: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " + 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
        0x6ds
        0x4ds
        0x61s
    .end array-data
.end method

.method public final ﾞʻ()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ˋᵔ:Lי/ˈ;

    iget-boolean v1, p0, Landroidx/leanback/widget/picker/TimePicker;->ˉـ:Z

    xor-int/lit8 v2, v1, 0x1

    iget v3, v0, Lי/ˈ;->ⁱˊ:I

    if-eq v2, v3, :cond_0

    iput v2, v0, Lי/ˈ;->ⁱˊ:I

    :cond_0
    if-eqz v1, :cond_1

    const/16 v1, 0x17

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    :goto_0
    iget v2, v0, Lי/ˈ;->ʽ:I

    if-eq v1, v2, :cond_2

    iput v1, v0, Lי/ˈ;->ʽ:I

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ˊˋ:Lי/ˈ;

    iget v1, v0, Lי/ˈ;->ⁱˊ:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iput v2, v0, Lי/ˈ;->ⁱˊ:I

    :cond_3
    iget v1, v0, Lי/ˈ;->ʽ:I

    const/16 v3, 0x3b

    if-eq v3, v1, :cond_4

    iput v3, v0, Lי/ˈ;->ʽ:I

    :cond_4
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->ʼˈ:Lי/ˈ;

    if-eqz v0, :cond_6

    iget v1, v0, Lי/ˈ;->ⁱˊ:I

    if-eqz v1, :cond_5

    iput v2, v0, Lי/ˈ;->ⁱˊ:I

    :cond_5
    iget v1, v0, Lי/ˈ;->ʽ:I

    const/4 v2, 0x1

    if-eq v2, v1, :cond_6

    iput v2, v0, Lי/ˈ;->ʽ:I

    :cond_6
    return-void
.end method
