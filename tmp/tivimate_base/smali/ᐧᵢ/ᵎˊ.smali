.class public final Lᐧᵢ/ᵎˊ;
.super Lᐧᵢ/ʿᵢ;
.source "SourceFile"


# static fields
.field public static final ʽ:Lᐧᵢ/ᵎˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᐧᵢ/ᵎˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᐧᵢ/ᵎˊ;->ʽ:Lᐧᵢ/ᵎˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lᐧᵢ/ˑٴ;Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p2, Lˎᵢ/יـ;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lᐧᵢ/ˑٴ;->ʼˎ:Lᵢ/ﹳٴ;

    iget-object p1, p1, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
