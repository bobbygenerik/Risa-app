.class public final Lᐧᵢ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/reflect/Method;

.field public final ˈ:Ljava/util/List;

.field public final ⁱˊ:Ljava/lang/Object;

.field public final ﹳٴ:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧᵢ/ˏי;->ﹳٴ:Ljava/lang/Class;

    iput-object p2, p0, Lᐧᵢ/ˏי;->ⁱˊ:Ljava/lang/Object;

    iput-object p3, p0, Lᐧᵢ/ˏי;->ʽ:Ljava/lang/reflect/Method;

    invoke-static {p4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lᐧᵢ/ˏי;->ˈ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lᐧᵢ/ˏי;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lᐧᵢ/ˏי;->ʽ:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lᐧᵢ/ˏי;->ˈ:Ljava/util/List;

    aput-object v1, v2, v0

    const-string v0, "%s.%s() %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
