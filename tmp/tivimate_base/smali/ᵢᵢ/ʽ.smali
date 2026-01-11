.class public abstract Lᵢᵢ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lᵢᵢ/ʽ;->ﹳٴ:Ljava/util/HashMap;

    new-instance v1, Lᵢᵢ/ⁱˊ;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lᵢᵢ/ⁱˊ;-><init>(I)V

    const-string v2, "DES/ECB/NoPadding"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lᵢᵢ/ⁱˊ;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lᵢᵢ/ⁱˊ;-><init>(I)V

    const-string v2, "RC4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
