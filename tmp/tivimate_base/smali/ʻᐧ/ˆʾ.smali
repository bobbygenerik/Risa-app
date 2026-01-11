.class public final Lʻᐧ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic ﹳٴ:Lʻᐧ/ٴﹶ;


# direct methods
.method public constructor <init>(Lʻᐧ/ٴﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻᐧ/ˆʾ;->ﹳٴ:Lʻᐧ/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    .prologue
    iget-object p1, p0, Lʻᐧ/ˆʾ;->ﹳٴ:Lʻᐧ/ٴﹶ;

    iget-object v0, p1, Lʻᐧ/ٴﹶ;->ˋـ:Ljava/util/HashSet;

    if-eqz p3, :cond_0

    iget-boolean p3, p1, Lʻᐧ/ٴﹶ;->ﹶʽ:Z

    iget-object v1, p1, Lʻᐧ/ٴﹶ;->ٴʿ:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    iput-boolean p2, p1, Lʻᐧ/ٴﹶ;->ﹶʽ:Z

    return-void

    :cond_0
    iget-boolean p3, p1, Lʻᐧ/ٴﹶ;->ﹶʽ:Z

    iget-object v1, p1, Lʻᐧ/ٴﹶ;->ٴʿ:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    iput-boolean p2, p1, Lʻᐧ/ٴﹶ;->ﹶʽ:Z

    return-void
.end method
