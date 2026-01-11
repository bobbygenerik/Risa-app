.class public final Lˑʼ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˑʼ/ˈⁱ;


# instance fields
.field public ʼˎ:Ljava/lang/String;

.field public ʼᐧ:Z

.field public ʽ:I

.field public ˆʾ:I

.field public ˈ:I

.field public ˉʿ:Ljava/lang/CharSequence;

.field public ˉˆ:Ljava/util/ArrayList;

.field public ˏי:I

.field public ˑﹳ:I

.field public יـ:Z

.field public ٴﹶ:Ljava/lang/CharSequence;

.field public ᵎﹶ:Z

.field public ᵔʾ:Ljava/util/ArrayList;

.field public ᵔᵢ:Z

.field public ᵔﹳ:Ljava/util/ArrayList;

.field public ⁱˊ:I

.field public final ﹳٴ:Ljava/util/ArrayList;

.field public final ﹳᐧ:Lˑʼ/ʿ;

.field public ﾞʻ:I

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Lˑʼ/ʿ;)V
    .locals 1

    .prologue
    invoke-virtual {p1}, Lˑʼ/ʿ;->ᵎˊ()Lˑʼ/ˑٴ;

    iget-object v0, p1, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ﹳٴ;->ᵔᵢ:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ﹳٴ;->ʼᐧ:Z

    const/4 v0, -0x1

    iput v0, p0, Lˑʼ/ﹳٴ;->ˏי:I

    iput-object p1, p0, Lˑʼ/ﹳٴ;->ﹳᐧ:Lˑʼ/ʿ;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˑʼ/ﹳٴ;->ˏי:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˑʼ/ﹳٴ;->ˏי:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lˑʼ/ﹳٴ;->ʼˎ:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˑʼ/ﹳٴ;->ʼˎ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ(ILˑʼ/ᴵᵔ;Ljava/lang/String;I)V
    .locals 3

    .prologue
    iget-object v0, p2, Lˑʼ/ᴵᵔ;->ـᵎ:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2, v0}, Lٴﹳ/ⁱˊ;->ʽ(Lˑʼ/ᴵᵔ;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_1
    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_4

    iget-object v2, p2, Lˑʼ/ᴵᵔ;->ʿᵢ:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lˑʼ/ᴵᵔ;->ʿᵢ:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iput-object p3, p2, Lˑʼ/ᴵᵔ;->ʿᵢ:Ljava/lang/String;

    :cond_4
    if-eqz p1, :cond_8

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    iget p3, p2, Lˑʼ/ᴵᵔ;->ˉـ:I

    if-eqz p3, :cond_6

    if-ne p3, p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change container ID of fragment "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lˑʼ/ᴵᵔ;->ˉـ:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_6
    :goto_1
    iput p1, p2, Lˑʼ/ᴵᵔ;->ˉـ:I

    iput p1, p2, Lˑʼ/ᴵᵔ;->ʿ:I

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t add fragment "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    new-instance p1, Lˑʼ/ʻᵎ;

    invoke-direct {p1, p4, p2}, Lˑʼ/ʻᵎ;-><init>(ILˑʼ/ᴵᵔ;)V

    invoke-virtual {p0, p1}, Lˑʼ/ﹳٴ;->ⁱˊ(Lˑʼ/ʻᵎ;)V

    iget-object p1, p0, Lˑʼ/ﹳٴ;->ﹳᐧ:Lˑʼ/ʿ;

    iput-object p1, p2, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʽ(Ljava/lang/String;)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˑʼ/ﹳٴ;->ᵔᵢ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ﹳٴ;->ᵎﹶ:Z

    iput-object p1, p0, Lˑʼ/ﹳٴ;->ʼˎ:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˆʾ(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 6

    .prologue
    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lˑʼ/ﹳٴ;->ʼˎ:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lˑʼ/ﹳٴ;->ˏי:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lˑʼ/ﹳٴ;->יـ:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Lˑʼ/ﹳٴ;->ﾞᴵ:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lˑʼ/ﹳٴ;->ﾞᴵ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lˑʼ/ﹳٴ;->ⁱˊ:I

    if-nez v0, :cond_1

    iget v0, p0, Lˑʼ/ﹳٴ;->ʽ:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lˑʼ/ﹳٴ;->ⁱˊ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lˑʼ/ﹳٴ;->ʽ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lˑʼ/ﹳٴ;->ˈ:I

    if-nez v0, :cond_3

    iget v0, p0, Lˑʼ/ﹳٴ;->ˑﹳ:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lˑʼ/ﹳٴ;->ˈ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lˑʼ/ﹳٴ;->ˑﹳ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lˑʼ/ﹳٴ;->ˆʾ:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lˑʼ/ﹳٴ;->ٴﹶ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lˑʼ/ﹳٴ;->ˆʾ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lˑʼ/ﹳٴ;->ٴﹶ:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Lˑʼ/ﹳٴ;->ﾞʻ:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lˑʼ/ﹳٴ;->ˉʿ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lˑʼ/ﹳٴ;->ﾞʻ:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lˑʼ/ﹳٴ;->ˉʿ:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Operations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ʻᵎ;

    iget v4, v3, Lˑʼ/ʻᵎ;->ﹳٴ:I

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cmd="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lˑʼ/ʻᵎ;->ﹳٴ:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_0
    const-string v4, "OP_SET_MAX_LIFECYCLE"

    goto :goto_1

    :pswitch_1
    const-string v4, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v4, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_3
    const-string v4, "ATTACH"

    goto :goto_1

    :pswitch_4
    const-string v4, "DETACH"

    goto :goto_1

    :pswitch_5
    const-string v4, "SHOW"

    goto :goto_1

    :pswitch_6
    const-string v4, "HIDE"

    goto :goto_1

    :pswitch_7
    const-string v4, "REMOVE"

    goto :goto_1

    :pswitch_8
    const-string v4, "REPLACE"

    goto :goto_1

    :pswitch_9
    const-string v4, "ADD"

    goto :goto_1

    :pswitch_a
    const-string v4, "NULL"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v4, v3, Lˑʼ/ʻᵎ;->ˈ:I

    if-nez v4, :cond_9

    iget v4, v3, Lˑʼ/ʻᵎ;->ˑﹳ:I

    if-eqz v4, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "enterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lˑʼ/ʻᵎ;->ˈ:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " exitAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lˑʼ/ʻᵎ;->ˑﹳ:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v4, v3, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    if-nez v4, :cond_b

    iget v4, v3, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    if-eqz v4, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "popEnterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " popExitAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v3, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final ˈ(I)V
    .locals 8

    .prologue
    iget-boolean v0, p0, Lˑʼ/ﹳٴ;->ᵎﹶ:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bump nesting in "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_1
    iget-object v1, p0, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˑʼ/ʻᵎ;

    iget-object v6, v5, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v6, :cond_2

    iget v7, v6, Lˑʼ/ᴵᵔ;->ʼˈ:I

    add-int/2addr v7, p1

    iput v7, v6, Lˑʼ/ᴵᵔ;->ʼˈ:I

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bump nesting of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    iget v5, v5, Lˑʼ/ᴵᵔ;->ʼˈ:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final ˉʿ(Lʿי/ـᵢ;)V
    .locals 3

    .prologue
    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lˑʼ/ﹳٴ;->ﹳᐧ:Lˑʼ/ʿ;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot show Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lˑʼ/ᴵᵔ;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lˑʼ/ʻᵎ;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lˑʼ/ʻᵎ;-><init>(ILˑʼ/ᴵᵔ;)V

    invoke-virtual {p0, v0}, Lˑʼ/ﹳٴ;->ⁱˊ(Lˑʼ/ʻᵎ;)V

    return-void
.end method

.method public final ˑﹳ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˑʼ/ʻᵎ;

    iget-boolean v3, v2, Lˑʼ/ʻᵎ;->ʽ:Z

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget v3, v2, Lˑʼ/ʻᵎ;->ﹳٴ:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    iput-boolean v5, v2, Lˑʼ/ʻᵎ;->ʽ:Z

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    iget v3, v3, Lˑʼ/ᴵᵔ;->ʿ:I

    const/4 v4, 0x2

    iput v4, v2, Lˑʼ/ʻᵎ;->ﹳٴ:I

    iput-boolean v5, v2, Lˑʼ/ʻᵎ;->ʽ:Z

    add-int/lit8 v2, v1, -0x1

    :goto_1
    if-ltz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑʼ/ʻᵎ;

    iget-boolean v5, v4, Lˑʼ/ʻᵎ;->ʽ:Z

    if-eqz v5, :cond_2

    iget-object v4, v4, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    iget v4, v4, Lˑʼ/ᴵᵔ;->ʿ:I

    if-ne v4, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final ٴﹶ(Lˑʼ/ᴵᵔ;)V
    .locals 3

    .prologue
    iget-object v0, p1, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lˑʼ/ﹳٴ;->ﹳᐧ:Lˑʼ/ʿ;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lˑʼ/ᴵᵔ;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lˑʼ/ʻᵎ;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lˑʼ/ʻᵎ;-><init>(ILˑʼ/ᴵᵔ;)V

    invoke-virtual {p0, v0}, Lˑʼ/ﹳٴ;->ⁱˊ(Lˑʼ/ʻᵎ;)V

    return-void
.end method

.method public final ᵎﹶ(ZZ)I
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˑʼ/ﹳٴ;->יـ:Z

    if-nez v0, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Commit: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    nop

    new-instance v0, Lˑʼ/ᵎʻ;

    invoke-direct {v0}, Lˑʼ/ᵎʻ;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    invoke-virtual {p0, v0, v2, v1}, Lˑʼ/ﹳٴ;->ˆʾ(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_0
    iput-boolean v1, p0, Lˑʼ/ﹳٴ;->יـ:Z

    iget-boolean v0, p0, Lˑʼ/ﹳٴ;->ᵎﹶ:Z

    iget-object v1, p0, Lˑʼ/ﹳٴ;->ﹳᐧ:Lˑʼ/ʿ;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lˑʼ/ʿ;->ٴﹶ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lˑʼ/ﹳٴ;->ˏי:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lˑʼ/ﹳٴ;->ˏי:I

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v1, p0, p1}, Lˑʼ/ʿ;->ʼʼ(Lˑʼ/ˈⁱ;Z)V

    :cond_2
    iget p1, p0, Lˑʼ/ﹳٴ;->ˏי:I

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "commit already called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔᵢ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˑʼ/ﹳٴ;->ᵎﹶ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ﹳٴ;->ᵔᵢ:Z

    iget-object v1, p0, Lˑʼ/ﹳٴ;->ﹳᐧ:Lˑʼ/ʿ;

    invoke-virtual {v1, p0, v0}, Lˑʼ/ʿ;->ᴵˊ(Lˑʼ/ﹳٴ;Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ⁱˊ(Lˑʼ/ʻᵎ;)V
    .locals 1

    iget-object v0, p0, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lˑʼ/ﹳٴ;->ⁱˊ:I

    iput v0, p1, Lˑʼ/ʻᵎ;->ˈ:I

    iget v0, p0, Lˑʼ/ﹳٴ;->ʽ:I

    iput v0, p1, Lˑʼ/ʻᵎ;->ˑﹳ:I

    iget v0, p0, Lˑʼ/ﹳٴ;->ˈ:I

    iput v0, p1, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    iget v0, p0, Lˑʼ/ﹳٴ;->ˑﹳ:I

    iput v0, p1, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    return-void
.end method

.method public final ﹳٴ(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Run: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    nop

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lˑʼ/ﹳٴ;->ᵎﹶ:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lˑʼ/ﹳٴ;->ﹳᐧ:Lˑʼ/ʿ;

    iget-object p1, p1, Lˑʼ/ʿ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final ﾞʻ(ILˑʼ/ᴵᵔ;Ljava/lang/String;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lˑʼ/ﹳٴ;->ʼˎ(ILˑʼ/ᴵᵔ;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﾞᴵ()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lˑʼ/ﹳٴ;->ᵎﹶ(ZZ)I

    return-void
.end method
