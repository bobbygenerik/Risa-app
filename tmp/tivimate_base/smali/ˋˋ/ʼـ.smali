.class public abstract Lˋˋ/ʼـ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ـˏ:Ljava/util/List;


# instance fields
.field public ʼˈ:Lˋˋ/ᴵˑ;

.field public ʽʽ:I

.field public final ʾˋ:Landroid/view/View;

.field public ˆﾞ:I

.field public ˈʿ:Z

.field public ˈٴ:I

.field public ˉٴ:Lˋˋ/ʼـ;

.field public ˊʻ:I

.field public ˊˋ:Landroidx/recyclerview/widget/RecyclerView;

.field public ˋᵔ:I

.field public ˑٴ:I

.field public ٴʼ:I

.field public ٴᵢ:I

.field public ᴵˊ:Ljava/lang/ref/WeakReference;

.field public ᴵᵔ:J

.field public ᵎˊ:Ljava/util/ArrayList;

.field public ᵎⁱ:Lˋˋ/ʼـ;

.field public ᵔי:Ljava/util/List;

.field public ᵔٴ:Lˋˋ/ʻˋ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lˋˋ/ʼـ;->ـˏ:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lˋˋ/ʼـ;->ʽʽ:I

    iput v0, p0, Lˋˋ/ʼـ;->ˈٴ:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lˋˋ/ʼـ;->ᴵᵔ:J

    iput v0, p0, Lˋˋ/ʼـ;->ˊʻ:I

    iput v0, p0, Lˋˋ/ʼـ;->ٴᵢ:I

    const/4 v1, 0x0

    iput-object v1, p0, Lˋˋ/ʼـ;->ˉٴ:Lˋˋ/ʼـ;

    iput-object v1, p0, Lˋˋ/ʼـ;->ᵎⁱ:Lˋˋ/ʼـ;

    iput-object v1, p0, Lˋˋ/ʼـ;->ᵎˊ:Ljava/util/ArrayList;

    iput-object v1, p0, Lˋˋ/ʼـ;->ᵔי:Ljava/util/List;

    const/4 v2, 0x0

    iput v2, p0, Lˋˋ/ʼـ;->ˆﾞ:I

    iput-object v1, p0, Lˋˋ/ʼـ;->ᵔٴ:Lˋˋ/ʻˋ;

    iput-boolean v2, p0, Lˋˋ/ʼـ;->ˈʿ:Z

    iput v2, p0, Lˋˋ/ʼـ;->ˑٴ:I

    iput v0, p0, Lˋˋ/ʼـ;->ˋᵔ:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-static {v0, v2}, Lʻٴ/ᵎﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lˋˋ/ʼـ;->ʽʽ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lˋˋ/ʼـ;->ᴵᵔ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lˋˋ/ʼـ;->ˈٴ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lˋˋ/ʼـ;->ٴᵢ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lˋˋ/ʼـ;->ٴﹶ()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lˋˋ/ʼـ;->ˈʿ:Z

    if-eqz v0, :cond_1

    const-string v0, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v0, "[attachedScrap]"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lˋˋ/ʼـ;->ᵔᵢ()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lˋˋ/ʼـ;->ᵎﹶ()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lˋˋ/ʼـ;->ᵔﹳ()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lˋˋ/ʼـ;->ﾞʻ()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lˋˋ/ʼـ;->ʼˎ()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " not recyclable("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lˋˋ/ʼـ;->ˆﾞ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lˋˋ/ʼـ;->ᵔᵢ()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v0, p0, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ()Z
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʼᐧ(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lˋˋ/ʼـ;->ˆﾞ:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lˋˋ/ʼـ;->ˆﾞ:I

    if-gez v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lˋˋ/ʼـ;->ˆﾞ:I

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ˋـ:Z

    const-string v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    nop

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p1, :cond_3

    if-ne v1, v0, :cond_3

    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    :cond_4
    :goto_1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setIsRecyclable val:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    nop

    :cond_5
    return-void
.end method

.method public final ʽ()I
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ʼـ;->ʼˈ:Lˋˋ/ᴵˑ;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lˋˋ/ʼـ;->ˊˋ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lˋˋ/ʼـ;->ˊˋ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->ᵎˊ(Lˋˋ/ʼـ;)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lˋˋ/ʼـ;->ʼˈ:Lˋˋ/ᴵˑ;

    if-ne v3, v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public final ˆʾ()Z
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ()I
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ٴᵢ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lˋˋ/ʼـ;->ʽʽ:I

    :cond_0
    return v0
.end method

.method public final ˉʿ()Z
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˉˆ()V
    .locals 4

    .prologue
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ˋـ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lˋˋ/ʼـ;->ﾞʻ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to reset temp-detached ViewHolder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". ViewHolders should be fully detached before resetting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    const/4 v1, -0x1

    iput v1, p0, Lˋˋ/ʼـ;->ʽʽ:I

    iput v1, p0, Lˋˋ/ʼـ;->ˈٴ:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lˋˋ/ʼـ;->ᴵᵔ:J

    iput v1, p0, Lˋˋ/ʼـ;->ٴᵢ:I

    iput v0, p0, Lˋˋ/ʼـ;->ˆﾞ:I

    const/4 v2, 0x0

    iput-object v2, p0, Lˋˋ/ʼـ;->ˉٴ:Lˋˋ/ʼـ;

    iput-object v2, p0, Lˋˋ/ʼـ;->ᵎⁱ:Lˋˋ/ʼـ;

    iget-object v2, p0, Lˋˋ/ʼـ;->ᵎˊ:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget v2, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lˋˋ/ʼـ;->ٴʼ:I

    iput v0, p0, Lˋˋ/ʼـ;->ˑٴ:I

    iput v1, p0, Lˋˋ/ʼـ;->ˋᵔ:I

    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->ﾞʻ(Lˋˋ/ʼـ;)V

    return-void
.end method

.method public final ˑﹳ()Ljava/util/List;
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1

    iget-object v0, p0, Lˋˋ/ʼـ;->ᵎˊ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˋˋ/ʼـ;->ᵔי:Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lˋˋ/ʼـ;->ـˏ:Ljava/util/List;

    return-object v0
.end method

.method public final ٴﹶ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʼـ;->ᵔٴ:Lˋˋ/ʻˋ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵎﹶ()Z
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵔʾ(IZ)V
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ˈٴ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lˋˋ/ʼـ;->ʽʽ:I

    iput v0, p0, Lˋˋ/ʼـ;->ˈٴ:I

    :cond_0
    iget v0, p0, Lˋˋ/ʼـ;->ٴᵢ:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lˋˋ/ʼـ;->ʽʽ:I

    iput v0, p0, Lˋˋ/ʼـ;->ٴᵢ:I

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p0, Lˋˋ/ʼـ;->ٴᵢ:I

    add-int/2addr p2, p1

    iput p2, p0, Lˋˋ/ʼـ;->ٴᵢ:I

    :cond_2
    iget p2, p0, Lˋˋ/ʼـ;->ʽʽ:I

    add-int/2addr p2, p1

    iput p2, p0, Lˋˋ/ʼـ;->ʽʽ:I

    iget-object p1, p0, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lˋˋ/ˊᵔ;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lˋˋ/ˊᵔ;->ʽ:Z

    :cond_3
    return-void
.end method

.method public final ᵔᵢ()Z
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵔﹳ()Z
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ⁱˊ()I
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʼـ;->ˊˋ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->ᵎˊ(Lˋˋ/ʼـ;)I

    move-result v0

    return v0
.end method

.method public final ﹳٴ(I)V
    .locals 1

    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    or-int/2addr p1, v0

    iput p1, p0, Lˋˋ/ʼـ;->ٴʼ:I

    return-void
.end method

.method public final ﹳᐧ()Z
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﾞʻ()Z
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﾞᴵ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lˋˋ/ʼـ;->ˊˋ:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
