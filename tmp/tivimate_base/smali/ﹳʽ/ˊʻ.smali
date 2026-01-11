.class public final Lﹳʽ/ˊʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳʽ/ˉٴ;
.implements Lʼٴ/ʽ;
.implements Lʽˑ/ﹳᐧ;
.implements Lﾞﹶ/ⁱˊ;
.implements Lˏـ/ﾞᴵ;
.implements Lʽᐧ/ﾞʻ;
.implements Lˊﾞ/ʼˎ;


# instance fields
.field public ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    iput p1, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lיᐧ/ʽ;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lיᐧ/ʽ;-><init>(Lיᐧ/ᵔᵢ;)V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void

    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lיـ/ﹳᐧ;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    new-instance p1, Lיـ/ʼˎ;

    invoke-direct {p1}, Lיـ/ʼˎ;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void

    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void

    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lᐧˎ/ﹳᐧ;

    invoke-direct {p1}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    new-instance p1, Lʿˎ/ⁱˊ;

    invoke-direct {p1}, Lʿˎ/ⁱˊ;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void

    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lʿٴ/ˆʾ;

    const-wide/16 v0, 0x3e8

    invoke-direct {p1, v0, v1}, Lʿٴ/ˆʾ;-><init>(J)V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    new-instance p1, Lٴﾞ/ˆʾ;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lٴﾞ/ˆʾ;-><init>(I)V

    const/16 v0, 0xa

    invoke-static {v0, p1}, Lˈﹳ/ˈ;->ﹳٴ(ILˈﹳ/ﹳٴ;)Lᵢ/ﹳٴ;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void

    :sswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    new-instance p1, Lיـ/ˑﹳ;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0x12 -> :sswitch_2
        0x16 -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/16 v0, 0x10

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    const/16 v0, 0x10

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    const/4 p1, 0x3

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    iput-object p2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/16 v0, 0xe

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    iput-object p2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p3, :cond_0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keysetName cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/ˑٴ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p3, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".lck"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    const/16 v0, 0x10

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    new-array v1, v0, [F

    iput-object v1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    const/16 v0, 0x1b

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    invoke-static {v1, p1}, Lﹳˋ/ٴﹶ;->ᵔﹳ(II)[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lʼﾞ/ˊʻ;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˊˋ/ⁱˊ;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lᐧˎ/ـˆ;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    new-instance p1, Lᐧˎ/ﹳᐧ;

    invoke-direct {p1}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public static ˉʿ(Lᴵﹳ/ᵎᵔ;)Lﹳʽ/ˊʻ;
    .locals 3

    new-instance v0, Lﹳʽ/ˊʻ;

    invoke-virtual {p0}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lﹳʽ/ᵔי;->ʽ(Ljava/lang/String;)Lʾᐧ/ﹳٴ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lﹳʽ/ˊʻ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾﹶ/ʽ;

    iget-object v0, v0, Lʾﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᵎˋ/ﹳٴ;

    invoke-interface {v1}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˈי/ᵔᵢ;

    new-instance v2, Lˊⁱ/ˑﹳ;

    new-instance v3, Lar/tvplayer/core/domain/ـˆ;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Lar/tvplayer/core/domain/ـˆ;-><init>(I)V

    const/16 v4, 0x16

    invoke-direct {v2, v4, v3}, Lˊⁱ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object v1

    new-instance v3, Lʾˈ/ˉˆ;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lʾˈ/ˉˆ;-><init>(Landroid/content/Context;I)V

    sget-object v0, Lᵎʽ/ᵔᵢ;->ﹳٴ:Lᵎʽ/ᵔᵢ;

    invoke-static {v0, v2, v1, v3}, Lʾˈ/ʼᐧ;->ⁱˊ(Lʿᵢ/ˏᵢ;Lˊⁱ/ˑﹳ;Lˊʽ/ˈ;Lᴵⁱ/ﹳٴ;)Lʿᵢ/ˈٴ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic reset()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    iget v0, p0, Lﹳʽ/ˊʻ;->ʾˋ:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lיᐧ/ʽ;

    iget-object v2, v1, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lיᐧ/ʽ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lיᐧ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "}, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻٴ/ᵔᵢ;

    const-string v1, "[ "

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x9

    if-ge v0, v2, :cond_3

    invoke-static {v1}, Lʻٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʻٴ/ᵔᵢ;

    iget-object v2, v2, Lʻٴ/ᵔᵢ;->ˉٴ:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "] "

    invoke-static {v1, v0}, Lʻٴ/ᵎﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʻٴ/ᵔᵢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public ʻٴ(Lˎﾞ/ⁱˊ;)V
    .locals 4

    .prologue
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Fid"

    iget-object v2, p1, Lˎﾞ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Status"

    iget v2, p1, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    invoke-static {v2}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "AuthToken"

    iget-object v2, p1, Lˎﾞ/ⁱˊ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "RefreshToken"

    iget-object v2, p1, Lˎﾞ/ⁱˊ;->ˈ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "TokenCreationEpochInSecs"

    iget-wide v2, p1, Lˎﾞ/ⁱˊ;->ﾞᴵ:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ExpiresInSecs"

    iget-wide v2, p1, Lˎﾞ/ⁱˊ;->ˑﹳ:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "FisError"

    iget-object p1, p1, Lˎﾞ/ⁱˊ;->ᵎﹶ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "PersistedInstallation"

    const-string v1, "tmp"

    iget-object v2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˉᵎ/ᵎﹶ;

    invoke-virtual {v2}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v2, v2, Lˉᵎ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Lﹳʽ/ˊʻ;->יـ()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unable to rename the tmpfile to PersistedInstallation"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public ʼʼ(II)V
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lﹳʽ/ˊʻ;->ʼᐧ(I)V

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p2

    array-length v3, v1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˋˋ/ᐧˎ;

    iget v3, v2, Lˋˋ/ᐧˎ;->ʾˋ:I

    if-ge v3, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v3, v0, :cond_3

    iget-object v2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sub-int/2addr v3, p2

    iput v3, v2, Lˋˋ/ᐧˎ;->ʾˋ:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public ʼˎ(Lˋˋ/ʼـ;Lʻʿ/ˉˆ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lיـ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˋˋ/ʿـ;

    if-nez v1, :cond_0

    invoke-static {}, Lˋˋ/ʿـ;->ﹳٴ()Lˋˋ/ʿـ;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v1, Lˋˋ/ʿـ;->ʽ:Lʻʿ/ˉˆ;

    iget p1, v1, Lˋˋ/ʿـ;->ﹳٴ:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v1, Lˋˋ/ʿـ;->ﹳٴ:I

    return-void
.end method

.method public ʼᐧ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    return-void

    :cond_0
    array-length v2, v0

    if-lt p1, v2, :cond_2

    array-length v2, v0

    :goto_0
    if-gt v2, p1, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    iput-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    :cond_2
    return-void
.end method

.method public ʽ(Lˊﾞ/ʼᐧ;J)Lˊﾞ/ᵔᵢ;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v1

    sub-long/2addr v1, v5

    const-wide/16 v3, 0x4e20

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lᐧˎ/ﹳᐧ;

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v4, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v3, v4, v1}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    const/4 v1, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move v7, v1

    move-wide v10, v3

    :goto_0
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_e

    iget-object v8, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v12, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-static {v12, v8}, Lˆˑ/ﹳٴ;->ﹳٴ(I[B)I

    move-result v8

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v8, v13, :cond_0

    invoke-virtual {v2, v12}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v9}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-static {v2}, Lיי/ʼʼ;->ʽ(Lᐧˎ/ﹳᐧ;)J

    move-result-wide v14

    cmp-long v1, v14, v3

    if-eqz v1, :cond_4

    iget-object v1, v0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lᐧˎ/ـˆ;

    invoke-virtual {v1, v14, v15}, Lᐧˎ/ـˆ;->ⁱˊ(J)J

    move-result-wide v14

    cmp-long v1, v14, p2

    if-lez v1, :cond_2

    cmp-long v1, v10, v3

    if-nez v1, :cond_1

    new-instance v1, Lˊﾞ/ᵔᵢ;

    const/4 v2, -0x1

    move-wide v3, v14

    invoke-direct/range {v1 .. v6}, Lˊﾞ/ᵔᵢ;-><init>(IJJ)V

    return-object v1

    :cond_1
    int-to-long v1, v7

    add-long v11, v5, v1

    new-instance v7, Lˊﾞ/ᵔᵢ;

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v7 .. v12}, Lˊﾞ/ᵔᵢ;-><init>(IJJ)V

    return-object v7

    :cond_2
    move-wide v7, v14

    const-wide/32 v10, 0x186a0

    add-long v14, v7, v10

    cmp-long v1, v14, p2

    if-lez v1, :cond_3

    iget v1, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    int-to-long v1, v1

    add-long v11, v5, v1

    new-instance v7, Lˊﾞ/ᵔᵢ;

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v7 .. v12}, Lˊﾞ/ᵔᵢ;-><init>(IJJ)V

    return-object v7

    :cond_3
    iget v1, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    move-wide v10, v7

    move v7, v1

    :cond_4
    iget v1, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v8

    const/16 v14, 0xa

    if-ge v8, v14, :cond_5

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v8, 0x9

    invoke-virtual {v2, v8}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v14

    if-ge v14, v8, :cond_6

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v8}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v8

    if-ge v8, v9, :cond_7

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto :goto_2

    :cond_7
    iget-object v8, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v14, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-static {v14, v8}, Lˆˑ/ﹳٴ;->ﹳٴ(I[B)I

    move-result v8

    const/16 v14, 0x1bb

    if-ne v8, v14, :cond_9

    invoke-virtual {v2, v9}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v8

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v14

    if-ge v14, v8, :cond_8

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2, v8}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_9
    :goto_1
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v8

    if-lt v8, v9, :cond_d

    iget-object v8, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v14, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-static {v14, v8}, Lˆˑ/ﹳٴ;->ﹳٴ(I[B)I

    move-result v8

    if-eq v8, v13, :cond_d

    const/16 v14, 0x1b9

    if-ne v8, v14, :cond_a

    goto :goto_2

    :cond_a
    ushr-int/lit8 v8, v8, 0x8

    if-eq v8, v12, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v2, v9}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v8

    const/4 v14, 0x2

    if-ge v8, v14, :cond_c

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto :goto_2

    :cond_c
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v8

    iget v14, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    iget v15, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    add-int/2addr v15, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v8}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto :goto_1

    :cond_d
    :goto_2
    iget v1, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    goto/16 :goto_0

    :cond_e
    cmp-long v2, v10, v3

    if-eqz v2, :cond_f

    int-to-long v1, v1

    add-long v12, v5, v1

    new-instance v8, Lˊﾞ/ᵔᵢ;

    const/4 v9, -0x2

    invoke-direct/range {v8 .. v13}, Lˊﾞ/ᵔᵢ;-><init>(IJJ)V

    return-object v8

    :cond_f
    sget-object v1, Lˊﾞ/ᵔᵢ;->ˈ:Lˊﾞ/ᵔᵢ;

    return-object v1
.end method

.method public ʽʽ()Lˎﾞ/ⁱˊ;
    .locals 14

    .prologue
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v2, v1, [B

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lﹳʽ/ˊʻ;->יـ()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v4, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-virtual {v0, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_3
    const-string v0, "Fid"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "Status"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "AuthToken"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "RefreshToken"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "TokenCreationEpochInSecs"

    const-wide/16 v9, 0x0

    invoke-virtual {v1, v3, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v3, "ExpiresInSecs"

    invoke-virtual {v1, v3, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "FisError"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v1, 0x5

    invoke-static {v1}, Lʻٴ/ᵎﹶ;->ˑﹳ(I)[I

    move-result-object v1

    aget v6, v1, v0

    if-eqz v6, :cond_3

    if-nez v6, :cond_1

    const-string v0, " registrationStatus"

    goto :goto_4

    :cond_1
    const-string v0, ""

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v4, Lˎﾞ/ⁱˊ;

    invoke-direct/range {v4 .. v13}, Lˎﾞ/ⁱˊ;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-object v4

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null registrationStatus"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ʽﹳ(Lʼᵔ/ˑﹳ;)Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʿٴ/ˆʾ;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʿٴ/ˆʾ;

    invoke-virtual {v1, p1}, Lʿٴ/ˆʾ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lﹳʽ/ˊʻ;->ˆʾ(Lʼᵔ/ˑﹳ;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lʿٴ/ˆʾ;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʿٴ/ˆʾ;

    invoke-virtual {v0, p1, v1}, Lʿٴ/ˆʾ;->ˈ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public ʾˋ(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lיـ/ˑﹳ;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lיـ/ˑﹳ;

    new-instance v2, Lʿٴ/ﾞʻ;

    invoke-direct {v2, p1, p2, p3}, Lʿٴ/ﾞʻ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, p4}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ʾᵎ(II)V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lﹳʽ/ˊʻ;->ʼᐧ(I)V

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˋˋ/ᐧˎ;

    iget v2, v1, Lˋˋ/ᐧˎ;->ʾˋ:I

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, p2

    iput v2, v1, Lˋˋ/ᐧˎ;->ʾˋ:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public ˆʾ(Lʼᵔ/ˑﹳ;)Ljava/lang/String;
    .locals 7

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵢ/ﹳٴ;

    invoke-virtual {v0}, Lᵢ/ﹳٴ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾⁱ/ᵔᵢ;

    :try_start_0
    iget-object v1, v0, Lʾⁱ/ᵔᵢ;->ʾˋ:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lʼᵔ/ˑﹳ;->ⁱˊ(Ljava/security/MessageDigest;)V

    iget-object p1, v0, Lʾⁱ/ᵔᵢ;->ʾˋ:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    sget-object v1, Lʿٴ/ᵔʾ;->ⁱˊ:[C

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-byte v3, p1, v2

    and-int/lit16 v4, v3, 0xff

    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lʿٴ/ᵔʾ;->ﹳٴ:[C

    ushr-int/lit8 v4, v4, 0x4

    aget-char v4, v6, v4

    aput-char v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v6, v3

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᵢ/ﹳٴ;

    invoke-virtual {v1, v0}, Lᵢ/ﹳٴ;->ˑﹳ(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᵢ/ﹳٴ;

    invoke-virtual {v1, v0}, Lᵢ/ﹳٴ;->ˑﹳ(Ljava/lang/Object;)Z

    throw p1
.end method

.method public ˈ(Lʼٴ/ﾞᴵ;)V
    .locals 3

    .prologue
    iget v0, p1, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reconnection finished with result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ﹳٴ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Exception setting completer."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ⁱˊ;

    iget-object v1, v0, Lʼٴ/ⁱˊ;->ٴᵢ:Lʼٴ/ʽ;

    if-eqz v1, :cond_1

    new-instance v1, Lˈˊ/ᵔﹳ;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2, p1}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lˈˊ/ᵔﹳ;->run()V

    goto :goto_1

    :cond_0
    iget-object p1, v0, Lʼٴ/ⁱˊ;->ٴﹶ:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    return-void
.end method

.method public ˈٴ(Lˋˋ/ʼـ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lיـ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˋˋ/ʿـ;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lˋˋ/ʿـ;->ﹳٴ:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lˋˋ/ʿـ;->ﹳٴ:I

    return-void
.end method

.method public ˉˆ()Lᵔⁱ/ʼᐧ;
    .locals 4

    new-instance v0, Lـʾ/ᵔﹳ;

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʽˑ/ﹳᐧ;

    invoke-interface {v1}, Lʽˑ/ﹳᐧ;->ˉˆ()Lᵔⁱ/ʼᐧ;

    move-result-object v1

    iget-object v2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    const/16 v3, 0x17

    invoke-direct {v0, v1, v3, v2}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0
.end method

.method public ˊʻ(Lˋˋ/ʼـ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lיـ/ʼˎ;

    invoke-virtual {v0}, Lיـ/ʼˎ;->ˆʾ()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Lיـ/ʼˎ;->ٴﹶ(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    iget-object v3, v0, Lיـ/ʼˎ;->ʽʽ:[Ljava/lang/Object;

    aget-object v4, v3, v1

    sget-object v5, Lיـ/ˆʾ;->ﹳٴ:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    aput-object v5, v3, v1

    iput-boolean v2, v0, Lיـ/ʼˎ;->ʾˋ:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lיـ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˋˋ/ʿـ;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput v0, p1, Lˋˋ/ʿـ;->ﹳٴ:I

    const/4 v0, 0x0

    iput-object v0, p1, Lˋˋ/ʿـ;->ⁱˊ:Lʻʿ/ˉˆ;

    iput-object v0, p1, Lˋˋ/ʿـ;->ʽ:Lʻʿ/ˉˆ;

    sget-object v0, Lˋˋ/ʿـ;->ˈ:Lʻٴ/ˈ;

    invoke-virtual {v0, p1}, Lʻٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public varargs ˏי([Ljava/lang/Object;)Lˊﾞ/ˉˆ;
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˊˋ/ⁱˊ;

    invoke-virtual {v1}, Lˊˋ/ⁱˊ;->ⁱˊ()Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating extension"

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    iget-object v1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    return-object v2

    :cond_1
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˊﾞ/ˉˆ;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected error creating extractor"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public ˑﹳ()V
    .locals 4

    .prologue
    const-string v0, "Reconnection attempt failed."

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ʽᐧ;

    sget-object v2, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʽᐧ;->ﹳٴ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Exception setting completer."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ⁱˊ;

    iget-object v1, v0, Lʼٴ/ⁱˊ;->ٴᵢ:Lʼٴ/ʽ;

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/leanback/widget/ᵔʾ;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroidx/leanback/widget/ᵔʾ;->run()V

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lʼٴ/ⁱˊ;->ٴﹶ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    return-void
.end method

.method public יـ()Ljava/io/File;
    .locals 4

    .prologue
    const-string v0, "PersistedInstallation."

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    if-nez v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˉᵎ/ᵎﹶ;

    invoke-virtual {v2}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v2, v2, Lˉᵎ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˉᵎ/ᵎﹶ;

    invoke-virtual {v0}, Lˉᵎ/ᵎﹶ;->ʽ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".json"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public ـˆ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    return-void

    :goto_2
    iget-object v2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to lock file: \'"

    const-string v4, "\'."

    invoke-static {v3, v0, v4}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public ٴﹶ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public ᴵˊ(Lיᐧ/ᵔᵢ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lיᐧ/ʽ;

    if-nez v1, :cond_0

    new-instance v1, Lיᐧ/ʽ;

    invoke-direct {v1, p1}, Lיᐧ/ʽ;-><init>(Lיᐧ/ᵔᵢ;)V

    iput-object v1, v1, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iget-object v2, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lיᐧ/ʽ;

    iget-object v3, v2, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iput-object v3, v1, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iput-object v2, v1, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    iput-object v1, v2, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iget-object v2, v1, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iput-object v1, v2, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lיᐧ/ᵔᵢ;->ﹳٴ()V

    :goto_0
    iget-object p1, v1, Lיᐧ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lיᐧ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    :cond_1
    iget-object p1, v1, Lיᐧ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ᴵᵔ()Ljava/lang/Object;
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lיᐧ/ʽ;

    iget-object v1, v0, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v1, Lיᐧ/ʽ;->ﹳٴ:Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget-object v2, v1, Lיᐧ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-lez v2, :cond_1

    iget-object v4, v1, Lיᐧ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    :cond_1
    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    iget-object v2, v1, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iget-object v4, v1, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    iput-object v4, v2, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    iget-object v4, v1, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    iput-object v2, v4, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iget-object v2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lיᐧ/ᵔᵢ;

    invoke-interface {v3}, Lיᐧ/ᵔᵢ;->ﹳٴ()V

    iget-object v1, v1, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public ᵎﹶ()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ᵔʾ(Lʻʼ/ﹳٴ;)[B
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    iget-object v2, p1, Lʻʼ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v3, p1, Lʻʼ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-wide v2, p1, Lʻʼ/ﹳٴ;->ʽ:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v2, p1, Lʻʼ/ﹳٴ;->ˈ:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object p1, p1, Lʻʼ/ﹳٴ;->ˑﹳ:[B

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ᵔᵢ(Lʽˑ/ˉˆ;Lʽˑ/ﾞʻ;)Lᵔⁱ/ʼᐧ;
    .locals 2

    new-instance v0, Lـʾ/ᵔﹳ;

    iget-object v1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʽˑ/ﹳᐧ;

    invoke-interface {v1, p1, p2}, Lʽˑ/ﹳᐧ;->ᵔᵢ(Lʽˑ/ˉˆ;Lʽˑ/ﾞʻ;)Lᵔⁱ/ʼᐧ;

    move-result-object p1

    iget-object p2, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    const/16 v1, 0x17

    invoke-direct {v0, p1, v1, p2}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0
.end method

.method public ᵔﹳ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lnet/engio/mbassy/bus/error/MissingPropertyException;

    const-string v1, "The property "

    const-string v2, " is not available in this runtime"

    invoke-static {v1, p1, v2}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ᵢˏ(Lˋˋ/ʼـ;I)Lʻʿ/ˉˆ;
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lיـ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->ˈ(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˋˋ/ʿـ;

    if-eqz v2, :cond_4

    iget v3, v2, Lˋˋ/ʿـ;->ﹳٴ:I

    and-int v4, v3, p2

    if-eqz v4, :cond_4

    not-int v4, p2

    and-int/2addr v3, v4

    iput v3, v2, Lˋˋ/ʿـ;->ﹳٴ:I

    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    iget-object p2, v2, Lˋˋ/ʿـ;->ⁱˊ:Lʻʿ/ˉˆ;

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    if-ne p2, v4, :cond_3

    iget-object p2, v2, Lˋˋ/ʿـ;->ʽ:Lʻʿ/ˉˆ;

    :goto_0
    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->ᵔᵢ(I)Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, v2, Lˋˋ/ʿـ;->ﹳٴ:I

    iput-object v1, v2, Lˋˋ/ʿـ;->ⁱˊ:Lʻʿ/ˉˆ;

    iput-object v1, v2, Lˋˋ/ʿـ;->ʽ:Lʻʿ/ˉˆ;

    sget-object p1, Lˋˋ/ʿـ;->ˈ:Lʻٴ/ˈ;

    invoke-virtual {p1, v2}, Lʻٴ/ˈ;->ˑﹳ(Ljava/lang/Object;)Z

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public synthetic ⁱˊ([BII)Lʽᐧ/ˈ;
    .locals 0

    invoke-static {p0, p1, p3}, Lʼﾞ/ˊˋ;->ﹳٴ(Lʽᐧ/ﾞʻ;[BI)Lʽᐧ/ⁱˊ;

    move-result-object p1

    return-object p1
.end method

.method public ﹳٴ([BIILʽᐧ/ٴﹶ;Lᐧˎ/ﾞᴵ;)V
    .locals 19

    .prologue
    move-object/from16 v1, p0

    move/from16 v0, p2

    iget-object v2, v1, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lᐧˎ/ﹳᐧ;

    add-int v3, v0, p3

    move-object/from16 v4, p1

    invoke-virtual {v2, v3, v4}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    invoke-virtual {v2, v0}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {v2}, Lʿˎ/ˆʾ;->ˈ(Lᐧˎ/ﹳᐧ;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ﾞʻ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    const/4 v4, 0x0

    const/4 v5, -0x1

    move v7, v4

    move v6, v5

    :goto_2
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ne v6, v5, :cond_5

    iget v7, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Lᐧˎ/ﹳᐧ;->ﾞʻ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    const-string v11, "STYLE"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v6, v10

    goto :goto_2

    :cond_3
    const-string v10, "NOTE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v9

    goto :goto_2

    :cond_4
    const/4 v6, 0x3

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v7}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    if-eqz v6, :cond_3b

    if-ne v6, v9, :cond_6

    :goto_3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Lᐧˎ/ﹳᐧ;->ﾞʻ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    if-ne v6, v10, :cond_36

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_35

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Lᐧˎ/ﹳᐧ;->ﾞʻ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    iget-object v6, v1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lʿˎ/ⁱˊ;

    iget-object v11, v6, Lʿˎ/ⁱˊ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    iget-object v6, v6, Lʿˎ/ⁱˊ;->ⁱˊ:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v12, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    :goto_4
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v13}, Lᐧˎ/ﹳᐧ;->ﾞʻ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_34

    iget-object v13, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v14, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-virtual {v11, v14, v13}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    invoke-virtual {v11, v12}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-static {v11}, Lʿˎ/ⁱˊ;->ʽ(Lᐧˎ/ﹳᐧ;)V

    invoke-virtual {v11}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v13

    const-string v14, ""

    const-string v15, "{"

    const/4 v8, 0x5

    if-ge v13, v8, :cond_7

    :goto_6
    move-object v8, v7

    goto/16 :goto_a

    :cond_7
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v8, v13}, Lᐧˎ/ﹳᐧ;->ـˆ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "::cue"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_6

    :cond_8
    iget v8, v11, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-static {v11, v6}, Lʿˎ/ⁱˊ;->ⁱˊ(Lᐧˎ/ﹳᐧ;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-virtual {v11, v8}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    move-object v8, v14

    goto :goto_a

    :cond_a
    const-string v8, "("

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v11, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v13, v11, Lᐧˎ/ﹳᐧ;->ʽ:I

    move/from16 v16, v4

    :goto_7
    if-ge v8, v13, :cond_c

    if-nez v16, :cond_c

    iget-object v10, v11, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    add-int/lit8 v16, v8, 0x1

    aget-byte v8, v10, v8

    int-to-char v8, v8

    const/16 v10, 0x29

    if-ne v8, v10, :cond_b

    move v8, v9

    goto :goto_8

    :cond_b
    move v8, v4

    :goto_8
    move/from16 v10, v16

    move/from16 v16, v8

    move v8, v10

    const/4 v10, 0x2

    goto :goto_7

    :cond_c
    add-int/lit8 v8, v8, -0x1

    iget v10, v11, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    sub-int/2addr v8, v10

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v8, v10}, Lᐧˎ/ﹳᐧ;->ـˆ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_d
    move-object v8, v7

    :goto_9
    invoke-static {v11, v6}, Lʿˎ/ⁱˊ;->ⁱˊ(Lᐧˎ/ﹳᐧ;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    const-string v13, ")"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_6

    :cond_e
    :goto_a
    if-eqz v8, :cond_32

    invoke-static {v11, v6}, Lʿˎ/ⁱˊ;->ⁱˊ(Lᐧˎ/ﹳᐧ;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    goto/16 :goto_1c

    :cond_f
    new-instance v10, Lʿˎ/ʽ;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v14, v10, Lʿˎ/ʽ;->ﹳٴ:Ljava/lang/String;

    iput-object v14, v10, Lʿˎ/ʽ;->ⁱˊ:Ljava/lang/String;

    sget-object v13, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v13, v10, Lʿˎ/ʽ;->ʽ:Ljava/util/Set;

    iput-object v14, v10, Lʿˎ/ʽ;->ˈ:Ljava/lang/String;

    iput-object v7, v10, Lʿˎ/ʽ;->ˑﹳ:Ljava/lang/String;

    iput-boolean v4, v10, Lʿˎ/ʽ;->ᵎﹶ:Z

    iput-boolean v4, v10, Lʿˎ/ʽ;->ʼˎ:Z

    iput v5, v10, Lʿˎ/ʽ;->ˆʾ:I

    iput v5, v10, Lʿˎ/ʽ;->ٴﹶ:I

    iput v5, v10, Lʿˎ/ʽ;->ﾞʻ:I

    iput v5, v10, Lʿˎ/ʽ;->ˉʿ:I

    iput v5, v10, Lʿˎ/ʽ;->ᵔʾ:I

    iput v5, v10, Lʿˎ/ʽ;->ʼᐧ:I

    iput-boolean v4, v10, Lʿˎ/ʽ;->ᵔﹳ:Z

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_10

    goto :goto_d

    :cond_10
    const/16 v13, 0x5b

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v5, :cond_12

    sget-object v14, Lʿˎ/ⁱˊ;->ʽ:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-virtual {v14, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v14, v10, Lʿˎ/ʽ;->ˈ:Ljava/lang/String;

    :cond_11
    invoke-virtual {v8, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_12
    sget-object v13, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const-string v13, "\\."

    invoke-virtual {v8, v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    aget-object v13, v8, v4

    const/16 v14, 0x23

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-eq v14, v5, :cond_13

    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Lʿˎ/ʽ;->ⁱˊ:Ljava/lang/String;

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lʿˎ/ʽ;->ﹳٴ:Ljava/lang/String;

    goto :goto_b

    :cond_13
    iput-object v13, v10, Lʿˎ/ʽ;->ⁱˊ:Ljava/lang/String;

    :goto_b
    array-length v13, v8

    if-le v13, v9, :cond_15

    array-length v13, v8

    array-length v14, v8

    if-gt v13, v14, :cond_14

    move v14, v9

    goto :goto_c

    :cond_14
    move v14, v4

    :goto_c
    invoke-static {v14}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-static {v8, v9, v13}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    new-instance v13, Ljava/util/HashSet;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v13, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v13, v10, Lʿˎ/ʽ;->ʽ:Ljava/util/Set;

    :cond_15
    :goto_d
    move v8, v4

    move-object v13, v7

    :goto_e
    const-string v14, "}"

    if-nez v8, :cond_30

    iget v8, v11, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-static {v11, v6}, Lʿˎ/ⁱˊ;->ⁱˊ(Lᐧˎ/ﹳᐧ;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_17

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    goto :goto_f

    :cond_16
    move v15, v4

    goto :goto_10

    :cond_17
    :goto_f
    move v15, v9

    :goto_10
    if-nez v15, :cond_2f

    invoke-virtual {v11, v8}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-static {v11}, Lʿˎ/ⁱˊ;->ʽ(Lᐧˎ/ﹳᐧ;)V

    invoke-static {v11, v6}, Lʿˎ/ⁱˊ;->ﹳٴ(Lᐧˎ/ﹳᐧ;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_18

    goto/16 :goto_1b

    :cond_18
    const-string v4, ":"

    invoke-static {v11, v6}, Lʿˎ/ⁱˊ;->ⁱˊ(Lᐧˎ/ﹳᐧ;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_1b

    :cond_19
    invoke-static {v11}, Lʿˎ/ⁱˊ;->ʽ(Lᐧˎ/ﹳᐧ;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_11
    const-string v7, ";"

    if-nez v5, :cond_1d

    iget v9, v11, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-static {v11, v6}, Lʿˎ/ⁱˊ;->ⁱˊ(Lᐧˎ/ﹳᐧ;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_14

    :cond_1a
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1c

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_13

    :cond_1b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_12
    move-object/from16 v1, p0

    const/4 v9, 0x1

    goto :goto_11

    :cond_1c
    :goto_13
    invoke-virtual {v11, v9}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    const/4 v5, 0x1

    goto :goto_12

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1e

    goto/16 :goto_1b

    :cond_1e
    iget v4, v11, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-static {v11, v6}, Lʿˎ/ⁱˊ;->ⁱˊ(Lᐧˎ/ﹳᐧ;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    goto :goto_15

    :cond_1f
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v11, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    :goto_15
    const-string v4, "color"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lᐧˎ/ˈ;->ﹳٴ(Ljava/lang/String;Z)I

    move-result v1

    iput v1, v10, Lʿˎ/ʽ;->ﾞᴵ:I

    iput-boolean v4, v10, Lʿˎ/ʽ;->ᵎﹶ:Z

    goto/16 :goto_1b

    :cond_20
    const/4 v4, 0x1

    const-string v5, "background-color"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v1, v4}, Lᐧˎ/ˈ;->ﹳٴ(Ljava/lang/String;Z)I

    move-result v1

    iput v1, v10, Lʿˎ/ʽ;->ᵔᵢ:I

    iput-boolean v4, v10, Lʿˎ/ʽ;->ʼˎ:Z

    goto/16 :goto_1b

    :cond_21
    const-string v5, "ruby-position"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "over"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    iput v4, v10, Lʿˎ/ʽ;->ʼᐧ:I

    goto/16 :goto_1b

    :cond_22
    const-string v4, "under"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x2

    iput v1, v10, Lʿˎ/ʽ;->ʼᐧ:I

    goto/16 :goto_1b

    :cond_23
    const-string v4, "text-combine-upright"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "all"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "digits"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_16

    :cond_24
    const/4 v1, 0x0

    goto :goto_17

    :cond_25
    :goto_16
    const/4 v1, 0x1

    :goto_17
    iput-boolean v1, v10, Lʿˎ/ʽ;->ᵔﹳ:Z

    goto/16 :goto_1b

    :cond_26
    const-string v4, "text-decoration"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "underline"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v4, 0x1

    iput v4, v10, Lʿˎ/ʽ;->ٴﹶ:I

    goto/16 :goto_1b

    :cond_27
    const-string v4, "font-family"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˈⁱ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lʿˎ/ʽ;->ˑﹳ:Ljava/lang/String;

    goto/16 :goto_1b

    :cond_28
    const-string v4, "font-weight"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string v4, "bold"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v4, 0x1

    iput v4, v10, Lʿˎ/ʽ;->ﾞʻ:I

    goto/16 :goto_1b

    :cond_29
    const/4 v4, 0x1

    const-string v5, "font-style"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v5, "italic"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iput v4, v10, Lʿˎ/ʽ;->ˉʿ:I

    goto/16 :goto_1b

    :cond_2a
    const-string v4, "font-size"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    sget-object v4, Lʿˎ/ⁱˊ;->ˈ:Ljava/util/regex/Pattern;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˈⁱ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid font-size: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "WebvttCssParser"

    invoke-static {v4, v1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_2b
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_18
    const/4 v1, -0x1

    goto :goto_19

    :sswitch_0
    const-string v1, "px"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_18

    :cond_2c
    const/4 v1, 0x2

    goto :goto_19

    :sswitch_1
    const-string v1, "em"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_18

    :cond_2d
    const/4 v1, 0x1

    goto :goto_19

    :sswitch_2
    const-string v1, "%"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_18

    :cond_2e
    const/4 v1, 0x0

    :goto_19
    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v1, 0x1

    iput v1, v10, Lʿˎ/ʽ;->ᵔʾ:I

    goto :goto_1a

    :pswitch_1
    const/4 v1, 0x1

    const/4 v5, 0x2

    iput v5, v10, Lʿˎ/ʽ;->ᵔʾ:I

    goto :goto_1a

    :pswitch_2
    const/4 v1, 0x1

    const/4 v5, 0x3

    iput v5, v10, Lʿˎ/ʽ;->ᵔʾ:I

    :goto_1a
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v10, Lʿˎ/ʽ;->ˉˆ:F

    :cond_2f
    :goto_1b
    move-object/from16 v1, p0

    move v8, v15

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_e

    :cond_30
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    move-object/from16 v1, p0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    goto/16 :goto_5

    :cond_32
    :goto_1c
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_33
    :goto_1d
    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_34
    move-object/from16 v1, p0

    goto/16 :goto_4

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A style block was found after the first cue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    const/4 v5, 0x3

    if-ne v6, v5, :cond_33

    sget-object v1, Lʿˎ/ʼˎ;->ﹳٴ:Ljava/util/regex/Pattern;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ﾞʻ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_37

    const/4 v7, 0x0

    goto :goto_1e

    :cond_37
    sget-object v5, Lʿˎ/ʼˎ;->ﹳٴ:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_38

    const/4 v7, 0x0

    invoke-static {v7, v6, v2, v0}, Lʿˎ/ʼˎ;->ˈ(Ljava/lang/String;Ljava/util/regex/Matcher;Lᐧˎ/ﹳᐧ;Ljava/util/ArrayList;)Lʿˎ/ˈ;

    move-result-object v7

    goto :goto_1e

    :cond_38
    const/4 v7, 0x0

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ﾞʻ(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_39

    goto :goto_1e

    :cond_39
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2, v0}, Lʿˎ/ʼˎ;->ˈ(Ljava/lang/String;Ljava/util/regex/Matcher;Lᐧˎ/ﹳᐧ;Ljava/util/ArrayList;)Lʿˎ/ˈ;

    move-result-object v7

    :cond_3a
    :goto_1e
    if-eqz v7, :cond_33

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_3b
    new-instance v0, Lˑי/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x2

    mul-int/2addr v1, v5

    new-array v1, v1, [J

    iput-object v1, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_3c

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʿˎ/ˈ;

    mul-int/lit8 v2, v4, 0x2

    iget-object v5, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, [J

    iget-wide v6, v1, Lʿˎ/ˈ;->ⁱˊ:J

    aput-wide v6, v5, v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    iget-wide v6, v1, Lʿˎ/ˈ;->ʽ:J

    aput-wide v6, v5, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_3c
    iget-object v1, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, [J

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v0, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lﹳˋ/ٴﹶ;->ᵎˊ(Lʽᐧ/ˈ;Lʽᐧ/ٴﹶ;Lᐧˎ/ﾞᴵ;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳᐧ(Lיᐧ/ᵔᵢ;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lיᐧ/ʽ;

    if-nez v1, :cond_0

    new-instance v1, Lיᐧ/ʽ;

    invoke-direct {v1, p1}, Lיᐧ/ʽ;-><init>(Lיᐧ/ᵔᵢ;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lיᐧ/ᵔᵢ;->ﹳٴ()V

    :goto_0
    iget-object p1, v1, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iget-object v0, v1, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    iput-object v0, p1, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    iget-object v0, v1, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    iput-object p1, v0, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iget-object p1, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lיᐧ/ʽ;

    iput-object p1, v1, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iget-object p1, p1, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    iput-object p1, v1, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    iput-object v1, p1, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iget-object p1, v1, Lיᐧ/ʽ;->ˈ:Lיᐧ/ʽ;

    iput-object v1, p1, Lיᐧ/ʽ;->ʽ:Lיᐧ/ʽ;

    iget-object p1, v1, Lיᐧ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-lez p1, :cond_2

    iget-object v0, v1, Lיᐧ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public ﾞʻ(Ljava/lang/Object;)Lˏـ/ˉʿ;
    .locals 9

    .prologue
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lʾٴ/ⁱˊ;

    iget-object v0, p0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˈᵔ/ˈ;

    iget-object v0, v0, Lˈᵔ/ˈ;->ʽ:Lˈᵔ/ʽ;

    iget-object v0, v0, Lˈᵔ/ʽ;->ʾˋ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/parse/ʾᵎ;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/parse/ʾᵎ;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p1, Lʾٴ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v2, Lﹳי/ʽ;

    invoke-virtual {v2, v0}, Lﹳי/ʽ;->ʻٴ(Lorg/json/JSONObject;)Lʾٴ/ﹳٴ;

    move-result-object v2

    iget-object v3, p1, Lʾٴ/ⁱˊ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Lﹳי/ʽ;

    iget-wide v4, v2, Lʾٴ/ﹳٴ;->ʽ:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "Failed to close settings writer."

    const-string v7, "FirebaseCrashlytics"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "Writing settings to cache file..."

    nop

    :cond_0
    :try_start_0
    const-string v8, "expires_at"

    invoke-virtual {v0, v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v3, v3, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v4, v6}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v4, v1

    :goto_1
    :try_start_2
    const-string v5, "Failed to cache settings"

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    const-string v3, "Loaded settings: "

    invoke-static {v0, v3}, Lʾٴ/ⁱˊ;->ˈ(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v0, p1, Lʾٴ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lʾٴ/ˈ;

    iget-object v0, v0, Lʾٴ/ˈ;->ﾞᴵ:Ljava/lang/String;

    iget-object v3, p1, Lʾٴ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    const-string v4, "com.google.firebase.crashlytics"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "existing_instance_identifier"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p1, Lʾٴ/ⁱˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p1, Lʾٴ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˏـ/ᵎﹶ;

    invoke-virtual {p1, v2}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    invoke-static {v1, v6}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_4
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    move-result-object p1

    return-object p1
.end method

.method public ﾞᴵ()V
    .locals 3

    iget-object v0, p0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ﹳᐧ;

    sget-object v1, Lᐧˎ/ʼʼ;->ⁱˊ:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v1

    invoke-virtual {v0, v2, v1}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    return-void
.end method
