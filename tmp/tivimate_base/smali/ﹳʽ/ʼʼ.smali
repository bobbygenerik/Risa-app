.class public final Lﹳʽ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lʾᐧ/ﹳٴ;


# instance fields
.field public final ﹳٴ:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lﹳʽ/ʼʼ;->ⁱˊ:Lʾᐧ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʽ/ʼʼ;->ﹳٴ:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final ﹳٴ([B)Ljava/lang/Iterable;
    .locals 4

    .prologue
    sget-object v0, Lﹳʽ/ʼʼ;->ⁱˊ:Lʾᐧ/ﹳٴ;

    iget-object v1, p0, Lﹳʽ/ʼʼ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    array-length v2, p1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    array-length v2, p1

    if-le v3, v2, :cond_0

    array-length v3, p1

    :cond_0
    new-instance v2, Lʾᐧ/ﹳٴ;

    invoke-direct {v2, v3, p1}, Lʾᐧ/ﹳٴ;-><init>(I[B)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lﹳʽ/ʾᵎ;

    invoke-direct {v1, p1, v0}, Lﹳʽ/ʾᵎ;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method
