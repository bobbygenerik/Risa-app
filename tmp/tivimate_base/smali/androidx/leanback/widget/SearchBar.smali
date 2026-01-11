.class public Landroidx/leanback/widget/SearchBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final synthetic ʿᵢ:I


# instance fields
.field public ʼˈ:Landroid/speech/SpeechRecognizer;

.field public ʽʽ:Landroidx/leanback/widget/SpeechOrbView;

.field public ʾˋ:Landroidx/leanback/widget/ˈˏ;

.field public ʿ:Landroidx/leanback/widget/ﹶᐧ;

.field public final ˆﾞ:I

.field public final ˈʿ:I

.field public ˈٴ:Landroid/widget/ImageView;

.field public final ˈⁱ:Landroid/util/SparseIntArray;

.field public final ˉـ:Landroid/content/Context;

.field public ˉٴ:Landroid/graphics/drawable/Drawable;

.field public ˊʻ:Ljava/lang/String;

.field public final ˊˋ:I

.field public final ˋᵔ:I

.field public final ˑٴ:I

.field public ـˏ:Z

.field public final ٴʼ:Landroid/view/inputmethod/InputMethodManager;

.field public ٴᵢ:Ljava/lang/String;

.field public ᴵˊ:Landroidx/leanback/widget/SearchEditText;

.field public ᴵˑ:Z

.field public ᴵᵔ:Ljava/lang/String;

.field public ᵎˊ:Z

.field public final ᵎⁱ:Landroid/os/Handler;

.field public ᵔי:Landroid/graphics/drawable/Drawable;

.field public final ᵔٴ:I

.field public ﹳـ:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SearchBar;->ᵎⁱ:Landroid/os/Handler;

    iput-boolean p3, p0, Landroidx/leanback/widget/SearchBar;->ᵎˊ:Z

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SearchBar;->ˈⁱ:Landroid/util/SparseIntArray;

    iput-boolean p3, p0, Landroidx/leanback/widget/SearchBar;->ᴵˑ:Z

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->ˉـ:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00c4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const-string p3, ""

    iput-object p3, p0, Landroidx/leanback/widget/SearchBar;->ᴵᵔ:Ljava/lang/String;

    const-string p3, "input_method"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->ٴʼ:Landroid/view/inputmethod/InputMethodManager;

    const p1, 0x7f0600f6

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->ᵔٴ:I

    const p1, 0x7f0600f5

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->ˆﾞ:I

    const p1, 0x7f0c002e

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->ˊˋ:I

    const p1, 0x7f0c002f

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->ˋᵔ:I

    const p1, 0x7f0600f4

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->ˑٴ:I

    const p1, 0x7f0600f3

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->ˈʿ:I

    return-void
.end method


# virtual methods
.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ˉٴ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ˊʻ:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ٴᵢ:Ljava/lang/String;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 6

    .prologue
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->ﹳـ:Landroid/media/SoundPool;

    const v0, 0x7f120005

    const v1, 0x7f120007

    const v4, 0x7f120004

    const v5, 0x7f120006

    filled-new-array {v4, v5, v0, v1}, [I

    move-result-object v0

    :goto_0
    const/4 v1, 0x4

    if-ge v3, v1, :cond_0

    aget v1, v0, v3

    iget-object v4, p0, Landroidx/leanback/widget/SearchBar;->ﹳـ:Landroid/media/SoundPool;

    iget-object v5, p0, Landroidx/leanback/widget/SearchBar;->ˉـ:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iget-object v5, p0, Landroidx/leanback/widget/SearchBar;->ˈⁱ:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->ﾞᴵ()V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ﹳـ:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0b0248

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᵔי:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0b024b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/SearchEditText;

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    const v0, 0x7f0b0247

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->ˈٴ:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ˉٴ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    new-instance v1, Landroidx/leanback/widget/ᴵʼ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/leanback/widget/ᴵʼ;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Landroidx/leanback/widget/ʻᵎ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/leanback/widget/ʻᵎ;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    new-instance v2, Lʼⁱ/ˆʾ;

    invoke-direct {v2, p0, v0}, Lʼⁱ/ˆʾ;-><init>(Landroidx/leanback/widget/SearchBar;Landroidx/leanback/widget/ʻᵎ;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    new-instance v1, Lﹳי/ʽ;

    invoke-direct {v1, p0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SearchEditText;->setOnKeyboardDismissListener(Landroidx/leanback/widget/ﹳﹳ;)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    new-instance v1, Landroidx/leanback/widget/ᴵˊ;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroidx/leanback/widget/ᴵˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    const-string v1, "escapeNorth,voiceDismiss"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const v0, 0x7f0b0249

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/SpeechOrbView;

    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʽʽ:Landroidx/leanback/widget/SpeechOrbView;

    new-instance v1, Landroidx/leanback/widget/ʼʼ;

    invoke-direct {v1, v2, p0}, Landroidx/leanback/widget/ʼʼ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SearchOrbView;->setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʽʽ:Landroidx/leanback/widget/SpeechOrbView;

    new-instance v1, Landroidx/leanback/widget/ᴵʼ;

    invoke-direct {v1, p0, v2}, Landroidx/leanback/widget/ᴵʼ;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchBar;->ᵔᵢ(Z)V

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->ᵎﹶ()V

    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->ˉٴ:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ˈٴ:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->ˈٴ:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->ˈٴ:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʽʽ:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusDownId(I)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {v0, p1}, Landroid/view/View;->setNextFocusDownId(I)V

    return-void
.end method

.method public setPermissionListener(Landroidx/leanback/widget/ﹶᐧ;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->ʿ:Landroidx/leanback/widget/ﹶᐧ;

    return-void
.end method

.method public setSearchAffordanceColors(Landroidx/leanback/widget/ˑʼ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʽʽ:Landroidx/leanback/widget/SpeechOrbView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/SpeechOrbView;->setNotListeningOrbColors(Landroidx/leanback/widget/ˑʼ;)V

    :cond_0
    return-void
.end method

.method public setSearchAffordanceColorsInListening(Landroidx/leanback/widget/ˑʼ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʽʽ:Landroidx/leanback/widget/SpeechOrbView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/SpeechOrbView;->setListeningOrbColors(Landroidx/leanback/widget/ˑʼ;)V

    :cond_0
    return-void
.end method

.method public setSearchBarListener(Landroidx/leanback/widget/ˈˏ;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->ʾˋ:Landroidx/leanback/widget/ˈˏ;

    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->ﾞᴵ()V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchBar;->setSearchQueryInternal(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchQueryInternal(Ljava/lang/String;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵᵔ:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->ᴵᵔ:Ljava/lang/String;

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʾˋ:Landroidx/leanback/widget/ˈˏ;

    if-eqz v0, :cond_1

    check-cast v0, Lⁱʽ/ﹳٴ;

    iget-object v0, v0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﾞᵔ/ˉٴ;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lﾞᵔ/ˉٴ;->ʽᐧ(Lﾞᵔ/ˉٴ;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSpeechRecognitionCallback(Landroidx/leanback/widget/ـᵎ;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->ﾞᴵ()V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʼˈ:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    iget-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->ـˏ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʼˈ:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->ـˏ:Z

    :cond_0
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->ʼˈ:Landroid/speech/SpeechRecognizer;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->ٴᵢ:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->ᵎﹶ()V

    return-void
.end method

.method public ʽ()V
    .locals 3

    new-instance v0, Landroidx/leanback/widget/ˏᵢ;

    const/4 v1, 0x0

    const v2, 0x7f120006

    invoke-direct {v0, v2, v1, p0}, Landroidx/leanback/widget/ˏᵢ;-><init>(IILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ᵎⁱ:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ˈ()V
    .locals 3

    new-instance v0, Landroidx/leanback/widget/ˏᵢ;

    const/4 v1, 0x0

    const v2, 0x7f120007

    invoke-direct {v0, v2, v1, p0}, Landroidx/leanback/widget/ˏᵢ;-><init>(IILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ᵎⁱ:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ˑﹳ()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˑ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʼˈ:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʿ:Landroidx/leanback/widget/ﹶᐧ;

    if-eqz v0, :cond_3

    check-cast v0, Lﾞᵔ/ⁱˊ;

    iget-object v0, v0, Lﾞᵔ/ⁱˊ;->ᴵˊ:Lﾞᵔ/ˉٴ;

    iget-object v0, v0, Lﾞᵔ/ˉٴ;->ʿʽ:Lˑʼ/ـˆ;

    sget-boolean v2, Lʿˋ/ˉʿ;->ﹳٴ:Z

    :try_start_0
    invoke-virtual {v0, v1}, Lˑʼ/ـˆ;->ﹳٴ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "android.permission.RECORD_AUDIO required for search"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˑ:Z

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Landroidx/leanback/widget/SearchBar;->ʼˈ:Landroid/speech/SpeechRecognizer;

    new-instance v3, Landroidx/leanback/widget/ـﹶ;

    invoke-direct {v3, p0}, Landroidx/leanback/widget/ـﹶ;-><init>(Landroidx/leanback/widget/SearchBar;)V

    invoke-virtual {v2, v3}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->ـˏ:Z

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʼˈ:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void
.end method

.method public final ᵎﹶ()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ٴᵢ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʽʽ:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Landroidx/leanback/widget/SearchBar;->ٴᵢ:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const v1, 0x7f130106

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Landroidx/leanback/widget/SearchBar;->ٴᵢ:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const v1, 0x7f130105

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ʽʽ:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->ˊʻ:Ljava/lang/String;

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final ᵔᵢ(Z)V
    .locals 2

    .prologue
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->ᵔי:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroidx/leanback/widget/SearchBar;->ˊˋ:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->ʽʽ:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    iget v0, p0, Landroidx/leanback/widget/SearchBar;->ˑٴ:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    iget v1, p0, Landroidx/leanback/widget/SearchBar;->ᵔٴ:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->ᵔי:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroidx/leanback/widget/SearchBar;->ˋᵔ:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    iget v0, p0, Landroidx/leanback/widget/SearchBar;->ˆﾞ:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    iget v0, p0, Landroidx/leanback/widget/SearchBar;->ˈʿ:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->ᵎﹶ()V

    return-void
.end method

.method public ⁱˊ()V
    .locals 3

    new-instance v0, Landroidx/leanback/widget/ˏᵢ;

    const/4 v1, 0x0

    const v2, 0x7f120004

    invoke-direct {v0, v2, v1, p0}, Landroidx/leanback/widget/ˏᵢ;-><init>(IILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ᵎⁱ:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ﹳٴ()V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/leanback/widget/SearchBar;->ٴʼ:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public final ﾞᴵ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˑ:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˊ:Landroidx/leanback/widget/SearchEditText;

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ˊʻ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->ᴵˑ:Z

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ʼˈ:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ʽʽ:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {v1}, Landroidx/leanback/widget/SpeechOrbView;->ʽ()V

    iget-boolean v1, p0, Landroidx/leanback/widget/SearchBar;->ـˏ:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->ʼˈ:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->cancel()V

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->ـˏ:Z

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->ʼˈ:Landroid/speech/SpeechRecognizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method
