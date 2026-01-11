.class public abstract Lˋᵔ/ᵎˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ʽ:Z

.field public static final ˈ:[I

.field public static final ˑﹳ:Lˋᵔ/ʾᵎ;

.field public static ⁱˊ:Ljava/lang/reflect/Field;

.field public static ﹳٴ:Ljava/util/WeakHashMap;

.field public static final ﾞᴵ:Lˋᵔ/ᵢˏ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lˋᵔ/ᵎˊ;->ˈ:[I

    new-instance v0, Lˋᵔ/ʾᵎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˋᵔ/ᵎˊ;->ˑﹳ:Lˋᵔ/ʾᵎ;

    new-instance v0, Lˋᵔ/ᵢˏ;

    invoke-direct {v0}, Lˋᵔ/ᵢˏ;-><init>()V

    sput-object v0, Lˋᵔ/ᵎˊ;->ﾞᴵ:Lˋᵔ/ᵢˏ;

    return-void

    :array_0
    .array-data 4
        0x7f0b0016
        0x7f0b0017
        0x7f0b0022
        0x7f0b002d
        0x7f0b0030
        0x7f0b0031
        0x7f0b0032
        0x7f0b0033
        0x7f0b0034
        0x7f0b0035
        0x7f0b0018
        0x7f0b0019
        0x7f0b001a
        0x7f0b001b
        0x7f0b001c
        0x7f0b001d
        0x7f0b001e
        0x7f0b001f
        0x7f0b0020
        0x7f0b0021
        0x7f0b0023
        0x7f0b0024
        0x7f0b0025
        0x7f0b0026
        0x7f0b0027
        0x7f0b0028
        0x7f0b0029
        0x7f0b002a
        0x7f0b002b
        0x7f0b002c
        0x7f0b002e
        0x7f0b002f
    .end array-data
.end method

.method public static ʼˎ(Landroid/view/View;Lˋᵔ/ᵎﹶ;)Lˋᵔ/ᵎﹶ;
    .locals 3

    .prologue
    const/4 v0, 0x3

    const-string v1, "ViewCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "performReceiveContent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", view="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Lˋᵔ/ᵎⁱ;->ⁱˊ(Landroid/view/View;Lˋᵔ/ᵎﹶ;)Lˋᵔ/ᵎﹶ;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f0b038b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳـ/ˆʾ;

    sget-object v1, Lˋᵔ/ᵎˊ;->ˑﹳ:Lˋᵔ/ʾᵎ;

    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Lﹳـ/ˆʾ;->ﹳٴ(Landroid/view/View;Lˋᵔ/ᵎﹶ;)Lˋᵔ/ᵎﹶ;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    instance-of v0, p0, Lˋᵔ/ʼᐧ;

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Lˋᵔ/ʼᐧ;

    :cond_3
    invoke-interface {v1, p1}, Lˋᵔ/ʼᐧ;->ﹳٴ(Lˋᵔ/ᵎﹶ;)Lˋᵔ/ᵎﹶ;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Lˋᵔ/ʼᐧ;

    if-eqz v0, :cond_5

    move-object v1, p0

    check-cast v1, Lˋᵔ/ʼᐧ;

    :cond_5
    invoke-interface {v1, p1}, Lˋᵔ/ʼᐧ;->ﹳٴ(Lˋᵔ/ᵎﹶ;)Lˋᵔ/ᵎﹶ;

    move-result-object p0

    return-object p0
.end method

.method public static ʽ(Landroid/view/KeyEvent;Landroid/view/View;)Z
    .locals 8

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v0, Lˋᵔ/ٴʼ;->ˈ:Ljava/util/ArrayList;

    const v0, 0x7f0b0391

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˋᵔ/ٴʼ;

    if-nez v1, :cond_1

    new-instance v1, Lˋᵔ/ٴʼ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lˋᵔ/ٴʼ;->ﹳٴ:Ljava/util/WeakHashMap;

    iput-object v2, v1, Lˋᵔ/ٴʼ;->ⁱˊ:Landroid/util/SparseArray;

    iput-object v2, v1, Lˋᵔ/ٴʼ;->ʽ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    iget-object v0, v1, Lˋᵔ/ٴʼ;->ﹳٴ:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    :cond_2
    sget-object v0, Lˋᵔ/ٴʼ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_3
    monitor-enter v0

    :try_start_0
    iget-object v3, v1, Lˋᵔ/ٴʼ;->ﹳٴ:Ljava/util/WeakHashMap;

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, v1, Lˋᵔ/ٴʼ;->ﹳٴ:Ljava/util/WeakHashMap;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_7

    sget-object v4, Lˋᵔ/ٴʼ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v4, v1, Lˋᵔ/ٴʼ;->ﹳٴ:Ljava/util/WeakHashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_2
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, v1, Lˋᵔ/ٴʼ;->ﹳٴ:Ljava/util/WeakHashMap;

    move-object v6, v4

    check-cast v6, Landroid/view/View;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_5
    invoke-virtual {v1, p1}, Lˋᵔ/ٴʼ;->ﹳٴ(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    if-eqz p1, :cond_a

    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lˋᵔ/ٴʼ;->ⁱˊ:Landroid/util/SparseArray;

    if-nez v0, :cond_9

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lˋᵔ/ٴʼ;->ⁱˊ:Landroid/util/SparseArray;

    :cond_9
    iget-object v0, v1, Lˋᵔ/ٴʼ;->ⁱˊ:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    if-eqz p1, :cond_b

    return v2

    :cond_b
    :goto_6
    const/4 p0, 0x0

    return p0
.end method

.method public static ˆʾ(Landroid/view/View;I)V
    .locals 2

    .prologue
    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ﾞᴵ(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˊˋ/ʽ;

    invoke-virtual {v1}, Lˊˋ/ʽ;->ﹳٴ()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ˈ(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 3

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lˋᵔ/ٴᵢ;->ﹳٴ(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0

    :cond_0
    sget-boolean v0, Lˋᵔ/ᵎˊ;->ʽ:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lˋᵔ/ᵎˊ;->ⁱˊ:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v2, "mAccessibilityDelegate"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lˋᵔ/ᵎˊ;->ⁱˊ:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-boolean v1, Lˋᵔ/ᵎˊ;->ʽ:Z

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    sget-object v0, Lˋᵔ/ᵎˊ;->ⁱˊ:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    sput-boolean v1, Lˋᵔ/ᵎˊ;->ʽ:Z

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V
    .locals 1

    .prologue
    if-nez p1, :cond_0

    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ˈ(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Lˋᵔ/ﹳٴ;

    if-eqz v0, :cond_0

    new-instance p1, Lˋᵔ/ⁱˊ;

    invoke-direct {p1}, Lˋᵔ/ⁱˊ;-><init>()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lˋᵔ/ⁱˊ;->ⁱˊ:Lˋᵔ/ﹳٴ;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static ˉˆ(Landroid/view/View;Lʽⁱ/ᵎﹶ;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lˋᵔ/ˉـ;->ᵔᵢ(Landroid/view/View;Lʽⁱ/ᵎﹶ;)V

    return-void

    :cond_0
    sget-object v0, Lˋᵔ/ﹳـ;->ˑﹳ:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lˋᵔ/ـˏ;

    invoke-direct {v0, p0, p1}, Lˋᵔ/ـˏ;-><init>(Landroid/view/View;Lʽⁱ/ᵎﹶ;)V

    const p1, 0x7f0b0393

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p1, 0x7f0b0389

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const p1, 0x7f0b038a

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_1
    return-void
.end method

.method public static ˑﹳ(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v0, 0x1c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Lˋᵔ/ˊʻ;->ﹳٴ(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0388

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static ٴﹶ(Landroid/view/View;Lˊˋ/ʽ;Lˊˋ/ﹳᐧ;)V
    .locals 6

    .prologue
    new-instance v0, Lˊˋ/ʽ;

    iget v2, p1, Lˊˋ/ʽ;->ⁱˊ:I

    iget-object v5, p1, Lˊˋ/ʽ;->ʽ:Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lˊˋ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lˊˋ/ﹳᐧ;Ljava/lang/Class;)V

    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ˈ(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lˋᵔ/ﹳٴ;

    if-eqz p2, :cond_1

    check-cast p1, Lˋᵔ/ﹳٴ;

    iget-object p1, p1, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    goto :goto_0

    :cond_1
    new-instance p2, Lˋᵔ/ⁱˊ;

    invoke-direct {p2, p1}, Lˋᵔ/ⁱˊ;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    move-object p1, p2

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Lˋᵔ/ⁱˊ;

    invoke-direct {p1}, Lˋᵔ/ⁱˊ;-><init>()V

    :cond_2
    invoke-static {p0, p1}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    invoke-virtual {v0}, Lˊˋ/ʽ;->ﹳٴ()I

    move-result p1

    invoke-static {p0, p1}, Lˋᵔ/ᵎˊ;->ˆʾ(Landroid/view/View;I)V

    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ﾞᴵ(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lˋᵔ/ᵎˊ;->ᵔᵢ(Landroid/view/View;I)V

    return-void
.end method

.method public static ᵎﹶ(Lˉˆ/ʻٴ;)[Ljava/lang/String;
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lˋᵔ/ᵎⁱ;->ﹳٴ(Landroid/view/View;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f0b038c

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static ᵔʾ(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    new-instance v0, Lˋᵔ/ʼʼ;

    const/16 v4, 0x1c

    const/4 v5, 0x1

    const v1, 0x7f0b0388

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x8

    invoke-direct/range {v0 .. v5}, Lˋᵔ/ʼʼ;-><init>(ILjava/lang/Class;III)V

    invoke-virtual {v0, p0, p1}, Lˈˏ/ʽ;->ﾞᴵ(Landroid/view/View;Ljava/lang/Object;)V

    sget-object v0, Lˋᵔ/ᵎˊ;->ﾞᴵ:Lˋᵔ/ᵢˏ;

    if-eqz p1, :cond_2

    iget-object p1, v0, Lˋᵔ/ᵢˏ;->ʾˋ:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void

    :cond_2
    iget-object p1, v0, Lˋᵔ/ᵢˏ;->ʾˋ:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static ᵔᵢ(Landroid/view/View;I)V
    .locals 5

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ˑﹳ(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v3

    const/16 v4, 0x20

    if-nez v3, :cond_5

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    if-ne p1, v4, :cond_3

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ˑﹳ(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p0, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " does not fully implement ViewParent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ViewCompat"

    nop

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/16 v4, 0x800

    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ˑﹳ(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_7
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static ⁱˊ(Landroid/view/View;Lˋᵔ/ᐧﹶ;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Lˋᵔ/ᐧﹶ;->ﾞᴵ()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lˋᵔ/ˉٴ;->ﹳٴ(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lˋᵔ/ʾˋ;->ﹳٴ(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, v0}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    :cond_1
    return-void
.end method

.method public static ﹳٴ(Landroid/view/View;)Lˋᵔ/ˋᵔ;
    .locals 2

    .prologue
    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    :cond_0
    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋᵔ/ˋᵔ;

    if-nez v0, :cond_1

    new-instance v0, Lˋᵔ/ˋᵔ;

    invoke-direct {v0, p0}, Lˋᵔ/ˋᵔ;-><init>(Landroid/view/View;)V

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static ﾞʻ(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V
    .locals 9

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v2 .. v8}, Lˋᵔ/ٴᵢ;->ⁱˊ(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_0
    return-void
.end method

.method public static ﾞᴵ(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    const v0, 0x7f0b0385

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method
