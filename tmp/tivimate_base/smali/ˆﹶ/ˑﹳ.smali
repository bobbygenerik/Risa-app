.class public final Lˆﹶ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ٴᵢ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public ʾˋ:Ljava/lang/Object;

.field public final synthetic ˈٴ:Lﹳᐧ/ﹳٴ;

.field public final synthetic ᴵˊ:Lᐧᵎ/ᵢי;

.field public final synthetic ᴵᵔ:Landroidx/lifecycle/ᴵᵔ;


# direct methods
.method public constructor <init>(Lᐧᵎ/ᵢי;Ljava/lang/Object;Lﹳᐧ/ﹳٴ;Landroidx/lifecycle/ᴵᵔ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆﹶ/ˑﹳ;->ᴵˊ:Lᐧᵎ/ᵢי;

    iput-object p2, p0, Lˆﹶ/ˑﹳ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lˆﹶ/ˑﹳ;->ˈٴ:Lﹳᐧ/ﹳٴ;

    iput-object p4, p0, Lˆﹶ/ˑﹳ;->ᴵᵔ:Landroidx/lifecycle/ᴵᵔ;

    const/4 p1, 0x0

    iput-object p1, p0, Lˆﹶ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lˈˊ/ᵔﹳ;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, p0, Lˆﹶ/ˑﹳ;->ᴵˊ:Lᐧᵎ/ᵢי;

    invoke-virtual {p1, v0}, Lᐧᵎ/ᵢי;->ʼˎ(Ljava/lang/Runnable;)V

    return-void
.end method
