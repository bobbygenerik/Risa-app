.class public final Lˉˋ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵˆ/ˑﹳ;


# instance fields
.field public final ʽ:Lˉˋ/ʼᐧ;

.field public final ⁱˊ:Lˉˋ/ʼˎ;

.field public final ﹳٴ:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lˉˋ/ʼˎ;Lˉˋ/ʼᐧ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˋ/ˉˆ;->ﹳٴ:Ljava/util/Set;

    iput-object p2, p0, Lˉˋ/ˉˆ;->ⁱˊ:Lˉˋ/ʼˎ;

    iput-object p3, p0, Lˉˋ/ˉˆ;->ʽ:Lˉˋ/ʼᐧ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/String;Lᴵˆ/ⁱˊ;Lᴵˆ/ˈ;)Landroidx/leanback/widget/ʻٴ;
    .locals 9

    .prologue
    iget-object v0, p0, Lˉˋ/ˉˆ;->ﹳٴ:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/leanback/widget/ʻٴ;

    iget-object v7, p0, Lˉˋ/ˉˆ;->ʽ:Lˉˋ/ʼᐧ;

    const/4 v8, 0x4

    iget-object v3, p0, Lˉˋ/ˉˆ;->ⁱˊ:Lˉˋ/ʼˎ;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Landroidx/leanback/widget/ʻٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v2

    :cond_0
    move-object v5, p2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object v5, p2, p3

    const/4 p3, 0x1

    aput-object v0, p2, p3

    const-string p3, "%s is not supported byt this factory. Supported encodings are: %s."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
